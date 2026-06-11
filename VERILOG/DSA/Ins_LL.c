#include <stdio.h>
#include <stdlib.h>

// Struct to return both the farthest node and its distance
typedef struct {
    int node; // The ID of the farthest node found
    int dist; // The distance to that node
} BFSResult;

// Helper function: Runs BFS and returns the farthest node and distance
BFSResult bfs(int startNode, int n, int** graph, int* graphColSize) {
    BFSResult result = {startNode, 0};
    
    // 1. Setup Distance Array (-1 for unvisited)
    int* dist = (int*)malloc(n * sizeof(int));
    if (dist == NULL) return result; // Allocation failure check
    
    for (int i = 0; i < n; i++) dist[i] = -1;

    // 2. Setup Queue
    int* queue = (int*)malloc(n * sizeof(int));
    if (queue == NULL) {
        free(dist);
        return result;
    }
    
    int front = 0, rear = 0;

    // 3. Start BFS
    queue[rear++] = startNode;
    dist[startNode] = 0;

    while (front < rear) {
        int u = queue[front++];
        
        // Check if this node is the farthest so far
        if (dist[u] > result.dist) {
            result.dist = dist[u];
            result.node = u;
        }

        // Visit neighbors
        for (int i = 0; i < graphColSize[u]; i++) {
            int v = graph[u][i];
            if (dist[v] == -1) {
                dist[v] = dist[u] + 1;
                queue[rear++] = v;
            }
        }
    }

    free(dist);
    free(queue);
    return result;
}

// Main function to find Tree Diameter
int treeDiameter(int** graph, int n, int* graphColSize) {
    if (n == 0) return 0;

    // Step 1: BFS from arbitrary node 0 to find endpoint A
    BFSResult t1 = bfs(0, n, graph, graphColSize);

    // Step 2: BFS from endpoint A to find the actual diameter
    BFSResult t2 = bfs(t1.node, n, graph, graphColSize);

    return t2.dist;
}

// --- Driver Code ---
int main() {
    // Example Tree: 
    //      1
    //     / \
    //    0   2
    //         \
    //          3
    //           \
    //            4
    // Longest path is 0 -> 1 -> 2 -> 3 -> 4 (Length: 4)

    int n = 5;

    // Adjacency List for the tree
    int* row0 = (int[]) {1};
    int* row1 = (int[]) {0, 2};
    int* row2 = (int[]) {1, 3};
    int* row3 = (int[]) {2, 4};
    int* row4 = (int[]) {3};

    int* graph[] = {row0, row1, row2, row3, row4};
    int colSizes[] = {1, 2, 2, 2, 1};

    printf("Tree Diameter: %d\n", treeDiameter(graph, n, colSizes));

    return 0;
}