"""
Smart Railway Washroom – ML Model (Google Sheets version)
==========================================================
Trains a Random Forest model on your Google Sheets data to predict:
  1. Air Quality Status  → Good / Moderate / Hazardous
  2. Maintenance Needed  → Yes / No

USAGE:
  py ml_model.py --train     # Train model on Google Sheets data
  py ml_model.py --predict   # Predict on Google Sheets data
  py ml_model.py --both      # Train then immediately predict
"""

import argparse
import datetime
import os
import warnings
import joblib
import numpy as np
import pandas as pd
import gspread
from google.oauth2.service_account import Credentials
from openpyxl import load_workbook
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder
import firebase_admin
from firebase_admin import credentials, db

cred = credentials.Certificate("serviceAccountKey.json")

firebase_admin.initialize_app(cred, {
    "databaseURL": "https://railwayssystem-bbe8a-default-rtdb.asia-southeast1.firebasedatabase.app/"
})

warnings.filterwarnings("ignore")

# ─────────────────────────────────────────────
#  ✏️  CONFIGURE THESE
# ─────────────────────────────────────────────

GOOGLE_SHEETS_CREDENTIALS = "google_sheets_cred.json"
GOOGLE_SHEET_NAME         = "Railways Washroom Data"
GOOGLE_WORKSHEET_NAME     = "Data"

PREDICTIONS_OUTPUT_FILE   = "predictions_output.xlsx"

AIR_QUALITY_MODEL_FILE    = "model_air_quality.pkl"
MAINTENANCE_MODEL_FILE    = "model_maintenance.pkl"
ENCODER_FILE              = "label_encoder.pkl"

# Maintenance triggered when ANY of these thresholds are exceeded
MAINTENANCE_PPM_THRESHOLD  = 50
MAINTENANCE_HUM_THRESHOLD  = 25
MAINTENANCE_TEMP_THRESHOLD = 50

# ─────────────────────────────────────────────
#  Actual column names from your Google Sheet
# ─────────────────────────────────────────────
# Replace the column constants section in BOTH ml_model.py and cloud_predict.py

COL_TIMESTAMP   = "Timestamp"
COL_PPM         = "PPM"
COL_TEMP        = "Temperature (°C)"
COL_HUM         = "Humidity (%)"
COL_AIR_QUALITY = "Air Quality"
COL_ALERT       = "Alert Level"
COL_ESP_STATUS  = "ESP32 Status"
COL_PIR_STATUS  = "PIR Status"
COL_PIR_FLAG    = "PIR Flag"
COL_DISTANCE    = "Distance (cm)"
COL_OCCUPANCY   = "Occupancy"

# Temperature and Humidity are not in your sheet yet —
# model will use PPM + hour/minute only until you add them
HAS_TEMP_HUM = False


# ─────────────────────────────────────────────
#  Google Sheets loader
# ─────────────────────────────────────────────

def load_data_from_sheets():
    print("      Connecting to Google Sheets...")
    scopes = [
        "https://www.googleapis.com/auth/spreadsheets",
        "https://www.googleapis.com/auth/drive",
    ]
    creds  = Credentials.from_service_account_file(GOOGLE_SHEETS_CREDENTIALS, scopes=scopes)
    client = gspread.authorize(creds)
    sheet  = client.open(GOOGLE_SHEET_NAME).worksheet(GOOGLE_WORKSHEET_NAME)

    rows = sheet.get_all_values()
    if len(rows) < 2:
        raise ValueError("Google Sheet has no data rows.")

    header = rows[0]
    data   = rows[1:]

    # Build DataFrame using only the first len(header) columns
    # and strip blank column names
    clean_header = [h for h in header if h.strip() != ""]
    df = pd.DataFrame(data, columns=header[:len(header)])
    df = df[clean_header]   # Drop blank columns

    # Convert numeric columns
    df[COL_PPM] = pd.to_numeric(df[COL_PPM], errors="coerce")

    print(f"      Loaded {len(df)} rows from '{GOOGLE_SHEET_NAME}' ✓")
    return df


# ─────────────────────────────────────────────
#  Feature engineering
# ─────────────────────────────────────────────

def extract_time_features(df):
    df = df.copy()
    if COL_TIMESTAMP in df.columns:
        df[COL_TIMESTAMP] = pd.to_datetime(df[COL_TIMESTAMP], errors="coerce")
        df["Hour"]   = df[COL_TIMESTAMP].dt.hour
        df["Minute"] = df[COL_TIMESTAMP].dt.minute
    else:
        df["Hour"]   = 0
        df["Minute"] = 0
    return df


def add_maintenance_label(df):
    df = df.copy()
    df[COL_TEMP] = pd.to_numeric(df[COL_TEMP], errors="coerce")
    df[COL_HUM]  = pd.to_numeric(df[COL_HUM],  errors="coerce")
    df["Maintenance Needed"] = (
        (df[COL_PPM]  >= MAINTENANCE_PPM_THRESHOLD) |
        (df[COL_HUM]  >= MAINTENANCE_HUM_THRESHOLD) |
        (df[COL_TEMP] >= MAINTENANCE_TEMP_THRESHOLD)
    ).map({True: "Yes", False: "No"})
    return df


def get_features(df):
    return df[[COL_PPM, COL_TEMP, COL_HUM,
               COL_PIR_FLAG, COL_DISTANCE,
               "Hour", "Minute"]].values

def add_maintenance_label(df):
    df = df.copy()
    df[COL_TEMP]     = pd.to_numeric(df[COL_TEMP],     errors="coerce")
    df[COL_HUM]      = pd.to_numeric(df[COL_HUM],      errors="coerce")
    df[COL_DISTANCE] = pd.to_numeric(df[COL_DISTANCE], errors="coerce")
    df[COL_PIR_FLAG]  = pd.to_numeric(df[COL_PIR_FLAG],  errors="coerce")
    df["Maintenance Needed"] = (
        (df[COL_PPM]      >= MAINTENANCE_PPM_THRESHOLD)  |
        (df[COL_HUM]      >= MAINTENANCE_HUM_THRESHOLD)  |
        (df[COL_TEMP]     >= MAINTENANCE_TEMP_THRESHOLD) |
        (df[COL_DISTANCE] <= 10)   # bin full
    ).map({True: "Yes", False: "No"})
    return df


# ─────────────────────────────────────────────
#  Training
# ─────────────────────────────────────────────

def train():
    print("\n" + "="*55)
    print("  TRAINING MODE")
    print("="*55)

    # ── Load ──
    print(f"\n[1/5] Loading data from Google Sheets...")
    df = load_data_from_sheets()

    if len(df) < 20:
        print("[WARN] Very few rows — accuracy may be low.")
        print("       Keep logging and retrain later.")

    # ── Features ──
    print("[2/5] Engineering features...")
    df = extract_time_features(df)
    df = add_maintenance_label(df)
    df.dropna(subset=[COL_PPM, COL_TEMP, COL_HUM, COL_PIR_FLAG, COL_DISTANCE, COL_AIR_QUALITY], inplace=True)
    print(f"      {len(df)} clean rows after dropping nulls")

    X = get_features(df)

    # ── Air Quality model ──
    print("[3/5] Training Air Quality model...")
    le_air = LabelEncoder()
    y_air  = le_air.fit_transform(df[COL_AIR_QUALITY].str.strip())

    X_train, X_test, y_train, y_test = train_test_split(
    X, y_air, test_size=0.2, random_state=42
)

    rf_air = RandomForestClassifier(n_estimators=100, random_state=42, class_weight="balanced")
    rf_air.fit(X_train, y_train)

    print("\n  Air Quality Classification Report:")
    print(classification_report(
        y_test, rf_air.predict(X_test),
        target_names=le_air.classes_, zero_division=0
    ))

    # ── Maintenance model ──
    print("[4/5] Training Maintenance model...")
    le_maint = LabelEncoder()
    y_maint  = le_maint.fit_transform(df["Maintenance Needed"])

    X_train2, X_test2, y_train2, y_test2 = train_test_split(
    X, y_maint, test_size=0.2, random_state=42
    )

    rf_maint = RandomForestClassifier(n_estimators=100, random_state=42, class_weight="balanced")
    rf_maint.fit(X_train2, y_train2)

    print("\n  Maintenance Classification Report:")
    print(classification_report(
        y_test2, rf_maint.predict(X_test2),
        target_names=le_maint.classes_, zero_division=0
    ))

    # ── Save ──
    print("[5/5] Saving models...")
    joblib.dump(rf_air,   AIR_QUALITY_MODEL_FILE)
    joblib.dump(rf_maint, MAINTENANCE_MODEL_FILE)
    joblib.dump({"air": le_air, "maintenance": le_maint}, ENCODER_FILE)

    print(f"\n  ✓ {AIR_QUALITY_MODEL_FILE}")
    print(f"  ✓ {MAINTENANCE_MODEL_FILE}")
    print(f"  ✓ {ENCODER_FILE}")

    # ── Feature importance ──
    # Feature importance
    features = [COL_PPM, COL_TEMP, COL_HUM, COL_PIR_FLAG, COL_DISTANCE, "Hour", "Minute"]

# importance = pd.Series(
#     rf_air.feature_importances_,
#     index=features
# ).sort_values(ascending=False)

# print("\nFeature importance for Air Quality:")
# for feat, score in importance.items():
#     bar = "█" * int(score * 40)
#     print(f"{feat:<15} {bar} {score:.3f}")

    print("\n[Training Complete]\n")


# ─────────────────────────────────────────────
#  Prediction
# ─────────────────────────────────────────────

def predict():
    print("\n" + "="*55)
    print("  PREDICTION MODE")
    print("="*55)

    # ── Check models exist ──
    for f in [AIR_QUALITY_MODEL_FILE, MAINTENANCE_MODEL_FILE, ENCODER_FILE]:
        if not os.path.exists(f):
            print(f"[ERROR] Model file not found: {f}")
            print("        Run with --train first.")
            return

    # ── Load models ──
    print("\n[1/4] Loading models...")
    rf_air   = joblib.load(AIR_QUALITY_MODEL_FILE)
    rf_maint = joblib.load(MAINTENANCE_MODEL_FILE)
    encoders = joblib.load(ENCODER_FILE)
    le_air   = encoders["air"]
    le_maint = encoders["maintenance"]
    print("      Models loaded ✓")

    # ── Load data ──
    print(f"[2/4] Loading data from Google Sheets...")
    df = load_data_from_sheets()

    # ── Features ──
    print("[3/4] Preparing features...")
    df = extract_time_features(df)
    df.dropna(subset=[COL_PPM, COL_TEMP, COL_HUM, COL_PIR_FLAG, COL_DISTANCE], inplace=True)
    X = get_features(df)

    # ── Predict ──
    print("[4/4] Running predictions...")
    df["Predicted Air Quality"]    = le_air.inverse_transform(rf_air.predict(X))
    df["Predicted Maintenance"]    = le_maint.inverse_transform(rf_maint.predict(X))
    df["Air Quality Confidence %"] = (rf_air.predict_proba(X).max(axis=1) * 100).round(1)
    df["Maintenance Confidence %"] = (rf_maint.predict_proba(X).max(axis=1) * 100).round(1)

    def recommendation(row):
        if row["Predicted Maintenance"] == "Yes" and row["Predicted Air Quality"] == "Hazardous":
            return "URGENT - Clean immediately"
        elif row["Predicted Maintenance"] == "Yes":
            return "Schedule cleaning soon"
        elif row["Predicted Air Quality"] == "Moderate":
            return "Monitor closely"
        else:
            return "All normal"

    df["Recommendation"] = df.apply(recommendation, axis=1)

    # Latest prediction
    pred_air = df["Predicted Air Quality"].iloc[-1]
    pred_maint = df["Predicted Maintenance"].iloc[-1]

    # Upload to Firebase
    prediction_ref = db.reference("Prediction")

    prediction_ref.set({
        "AirQuality": pred_air,
        "Maintenance": pred_maint
    })
    print(db.reference("Prediction").get())
    print("Prediction uploaded to Firebase")
    print(f"Latest Air Quality Prediction: {pred_air}")
    print(f"Latest Maintenance Prediction: {pred_maint}")

    # Save to Excel
    output_cols = [
    COL_TIMESTAMP,
    COL_PPM,
    COL_AIR_QUALITY,
    COL_ALERT,
    "Predicted Air Quality",
    "Air Quality Confidence %",
    "Predicted Maintenance",
    "Maintenance Confidence %",
    "Recommendation"
]

    output_cols = [c for c in output_cols if c in df.columns]

    df_out = df[output_cols]

    df_out.to_excel(
    PREDICTIONS_OUTPUT_FILE,
    index=False,
    sheet_name="Predictions"
)

    print(f"\n✓ Predictions saved to '{PREDICTIONS_OUTPUT_FILE}'")
    print("\n" + "-"*55)
    print("  PREDICTION SUMMARY")
    print("-"*55)

    print(f"  Total readings analysed : {len(df_out)}")
    print(f"  Urgent action needed    : {df_out['Recommendation'].str.contains('URGENT').sum()}")
    print(f"  Schedule cleaning       : {df_out['Recommendation'].str.contains('Schedule').sum()}")
    print(f"  Monitor                 : {df_out['Recommendation'].str.contains('Monitor').sum()}")
    print(f"  All normal              : {df_out['Recommendation'].str.contains('normal').sum()}")

    print("\n  Last 5 predictions:")
    print(
        df_out[
            [COL_PPM,
            "Predicted Air Quality",
            "Predicted Maintenance",
            "Recommendation"]
        ].tail(5).to_string(index=False)
    )

    print()

    # ── Summary ──
    print("\n" + "-"*55)
    print("  PREDICTION SUMMARY")
    print("-"*55)
#  Entry point
# ─────────────────────────────────────────────

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Railway Washroom ML Model")
    parser.add_argument("--train",   action="store_true", help="Train on Google Sheets data")
    parser.add_argument("--predict", action="store_true", help="Predict on Google Sheets data")
    parser.add_argument("--both",    action="store_true", help="Train then predict")
    args = parser.parse_args()

    if args.both:
        train()
        predict()
    elif args.train:
        train()
    elif args.predict:
        predict()
    else:
        print("Usage:")
        print("  py ml_model.py --train")
        print("  py ml_model.py --predict")
        print("  py ml_model.py --both")

