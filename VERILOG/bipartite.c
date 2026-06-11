#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// Function to check if the graph is bipartite
// graph: An array of pointers (adjacency list)
// graphSize: The number of nodes (V)
// graphColSize: An array where graphColSize[i] is the number of neighbors for node i
bool isBipartite(int** graph, int graphSize, int* graphColSize) {
    
    // 1. Allocate memory for the color array
    // -1 = uncolored, 0 and 1 are colors
    int* color = (int*)malloc(graphSize * sizeof(int));
    if (color == NULL) return false; // Memory allocation check

    // Initialize all colors to -1
    for (int i = 0; i < graphSize; i++) {
        color[i] = -1;
    }

    // 2. Allocate memory for the BFS queue
    // In the worst case, the queue holds all vertices
    int* queue = (int*)malloc(graphSize * sizeof(int));
    if (queue == NULL) {
        free(color);
        return false;
    }

    // 3. Iterate through all nodes (handling disconnected components)
    for (int start = 0; start < graphSize; start++) {
        
        if (color[start] == -1) { // Not colored yet -> new component
            
            // Setup BFS Queue
            int front = 0;
            int rear = 0;
            
            queue[rear++] = start;
            color[start] = 0;

            while (front < rear) {
                int u = queue[front++]; // Pop left

                // Iterate through neighbors of u
                // graphColSize[u] gives the number of neighbors for node u
                for (int i = 0; i < graphColSize[u]; i++) {
                    int v = graph[u][i];

                    if (color[v] == -1) {
                        color[v] = 1 - color[u]; // Alternate color
                        queue[rear++] = v;       // Append to queue
                    } 
                    else if (color[v] == color[u]) {
                        // Same color found -> Not bipartite
                        free(color);
                        free(queue);
                        return false;
                    }
                }
            }
        }
    }

    // 4. Cleanup and return True
    free(color);
    free(queue);
    return true;
}

// --- Driver Code to Test the Function ---
int main() {
    // Example Graph: 0-1, 1-2, 2-3, 3-0 (A square cycle - Bipartite)
    // 0: [1, 3]
    // 1: [0, 2]
    // 2: [1, 3]
    // 3: [0, 2]
    
    int n = 4;
    
    // Allocating the adjacency list
    int* row0 = (int[]) {1, 3};
    int* row1 = (int[]) {0, 2};
    int* row2 = (int[]) {1, 3};
    int* row3 = (int[]) {0, 2};
    
    int* graph[] = {row0, row1, row2, row3};
    
    // Column sizes (number of neighbors per node)
    int colSizes[] = {2, 2, 2, 2};

    if (isBipartite(graph, n, colSizes)) {
        printf("The graph is Bipartite.\n");
    } else {
        printf("The graph is NOT Bipartite.\n");
    }

    return 0;
}