"""
cloud_predict.py
================
Runs every 10 minutes via GitHub Actions.
Reads latest data from Google Sheets → runs ML prediction → pushes result to Firebase.
"""

import os
import json
import datetime
import joblib
import numpy as np
import pandas as pd
import gspread
import firebase_admin
from firebase_admin import credentials, db
from google.oauth2.service_account import Credentials
from sklearn.ensemble import RandomForestClassifier

# ─────────────────────────────────────────────
#  Config
# ─────────────────────────────────────────────
GOOGLE_SHEET_NAME     = "Railways Washroom Data"
GOOGLE_WORKSHEET_NAME = "Gas Data"
FIREBASE_DATABASE_URL = "https://railwayssystem-bbe8a-default-rtdb.asia-southeast1.firebasedatabase.app/"

COL_TIMESTAMP   = "Timestamp"
COL_PPM         = "PPM"
COL_TEMP        = "Temperature (°C)"
COL_HUM         = "Humidity (%)"
COL_AIR_QUALITY = "Air Quality"

AIR_QUALITY_MODEL_FILE = "model_air_quality.pkl"
MAINTENANCE_MODEL_FILE = "model_maintenance.pkl"
ENCODER_FILE           = "label_encoder.pkl"

MAINTENANCE_PPM_THRESHOLD  = 600
MAINTENANCE_HUM_THRESHOLD  = 75
MAINTENANCE_TEMP_THRESHOLD = 40

# ─────────────────────────────────────────────
#  Load credentials from GitHub Secrets
#  (injected as environment variables)
# ─────────────────────────────────────────────
def load_credentials():
    # Firebase
    firebase_key = os.environ.get("FIREBASE_KEY")
    if not firebase_key:
        raise ValueError("FIREBASE_KEY environment variable not set")
    firebase_info = json.loads(firebase_key)
    with open("serviceAccountKey.json", "w") as f:
        json.dump(firebase_info, f)

    # Google Sheets
    gsheets_key = os.environ.get("GSHEETS_KEY")
    if not gsheets_key:
        raise ValueError("GSHEETS_KEY environment variable not set")
    gsheets_info = json.loads(gsheets_key)
    with open("google_sheets_cred.json", "w") as f:
        json.dump(gsheets_info, f)

    print("[Credentials] Loaded from environment ✓")


def init_firebase():
    cred = credentials.Certificate("serviceAccountKey.json")
    firebase_admin.initialize_app(cred, {"databaseURL": FIREBASE_DATABASE_URL})
    print("[Firebase] Connected ✓")


def load_latest_from_sheets(n_rows=50):
    scopes = [
        "https://www.googleapis.com/auth/spreadsheets",
        "https://www.googleapis.com/auth/drive",
    ]
    creds  = Credentials.from_service_account_file("google_sheets_cred.json", scopes=scopes)
    client = gspread.authorize(creds)
    sheet  = client.open(GOOGLE_SHEET_NAME).worksheet(GOOGLE_WORKSHEET_NAME)

    rows = sheet.get_all_values()
    if len(rows) < 2:
        raise ValueError("No data in Google Sheet")

    # Strip blank column names
    header = [h for h in rows[0] if h.strip() != ""]
    df     = pd.DataFrame(rows[1:], columns=rows[0])
    df     = df[header]
    df     = df.tail(n_rows).copy()

    # Handle both old and new column names for PPM
    if "PPM" in df.columns:
        df.rename(columns={"PPM": COL_PPM}, inplace=True)
    elif "Gas Value (ppm)" in df.columns:
        df.rename(columns={"Gas Value (ppm)": COL_PPM}, inplace=True)
    else:
        raise ValueError(f"No PPM column found. Available columns: {df.columns.tolist()}")

    # Handle both old and new column names for Temp and Humidity
    if "Temperature (°C)" not in df.columns and "Temperature" in df.columns:
        df.rename(columns={"Temperature": COL_TEMP}, inplace=True)
    if "Humidity (%)" not in df.columns and "Humidity" in df.columns:
        df.rename(columns={"Humidity": COL_HUM}, inplace=True)

    # If Temp/Humidity still missing, fill with defaults so model doesn't crash
    if COL_TEMP not in df.columns:
        print("[WARN] Temperature column missing — using default 30.0")
        df[COL_TEMP] = 30.0
    if COL_HUM not in df.columns:
        print("[WARN] Humidity column missing — using default 50.0")
        df[COL_HUM] = 50.0

    df[COL_PPM]  = pd.to_numeric(df[COL_PPM],  errors="coerce")
    df[COL_TEMP] = pd.to_numeric(df[COL_TEMP], errors="coerce")
    df[COL_HUM]  = pd.to_numeric(df[COL_HUM],  errors="coerce")

    print(f"[Sheets] Loaded last {len(df)} rows ✓")
    return df


def extract_time_features(df):
    df = df.copy()
    df[COL_TIMESTAMP] = pd.to_datetime(df[COL_TIMESTAMP], errors="coerce")
    df["Hour"]   = df[COL_TIMESTAMP].dt.hour
    df["Minute"] = df[COL_TIMESTAMP].dt.minute
    return df


def get_features(df):
    return df[[COL_PPM, COL_TEMP, COL_HUM, "Hour", "Minute"]].values


def push_prediction_to_firebase(prediction):
    """Push prediction result to Firebase under /Prediction node."""
    ref = db.reference("/Prediction")
    ref.set(prediction)
    print(f"[Firebase] Prediction pushed ✓")
    print(f"           {prediction}")


def main():
    print("=" * 55)
    print("  Railway Washroom – Cloud Prediction Run")
    print(f"  {datetime.datetime.utcnow().strftime('%Y-%m-%d %H:%M:%S')} UTC")
    print("=" * 55)

    # ── Setup ──
    load_credentials()
    init_firebase()

    # ── Load models ──
    print("\n[1/4] Loading models...")
    rf_air   = joblib.load(AIR_QUALITY_MODEL_FILE)
    rf_maint = joblib.load(MAINTENANCE_MODEL_FILE)
    encoders = joblib.load(ENCODER_FILE)
    le_air   = encoders["air"]
    le_maint = encoders["maintenance"]
    print("      Models loaded ✓")

    # ── Load latest data ──
    print("[2/4] Loading latest data from Google Sheets...")
    df = load_latest_from_sheets(n_rows=50)
    df = extract_time_features(df)
    df.dropna(subset=[COL_PPM, COL_TEMP, COL_HUM], inplace=True)

    if len(df) == 0:
        raise ValueError("No valid rows after dropping nulls")

    X = get_features(df)

    # ── Predict on latest row only ──
    print("[3/4] Running prediction on latest reading...")
    latest_X = X[-1].reshape(1, -1)

    air_pred    = le_air.inverse_transform(rf_air.predict(latest_X))[0]
    maint_pred  = le_maint.inverse_transform(rf_maint.predict(latest_X))[0]
    air_conf    = round(float(rf_air.predict_proba(latest_X).max()) * 100, 1)
    maint_conf  = round(float(rf_maint.predict_proba(latest_X).max()) * 100, 1)

    # Recommendation
    if maint_pred == "Yes" and air_pred == "Hazardous":
        recommendation = "URGENT"
        led_signal     = "RED"
    elif maint_pred == "Yes" or air_pred == "Moderate":
        recommendation = "WARNING"
        led_signal     = "YELLOW"
    else:
        recommendation = "NORMAL"
        led_signal     = "GREEN"

    prediction = {
        "AirQuality":          air_pred,
        "AirQualityConfidence": air_conf,
        "MaintenanceNeeded":   maint_pred,
        "MaintenanceConfidence": maint_conf,
        "Recommendation":      recommendation,
        "LEDSignal":           led_signal,
        "LastPredicted":       datetime.datetime.utcnow().strftime("%Y-%m-%d %H:%M:%S") + " UTC"
    }

    # ── Push to Firebase ──
    print("[4/4] Pushing to Firebase...")
    push_prediction_to_firebase(prediction)

    print("\n[Done] ✓")


if __name__ == "__main__":
    main()
