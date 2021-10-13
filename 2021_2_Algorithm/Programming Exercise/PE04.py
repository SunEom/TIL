def countVertex(edges, v):
    visited[v] = True;

    for i in range(len(edges[v])):
        if visited[edges[v][i]] == False:
            countVertex(edges, edges[v][i]);

numOfComputer = int(input());
numOfEdge = int(input());
edges = [0];
visited = [0];

for i in range(numOfComputer):
    edges.append([]);
    visited.append(False);

for i in range(numOfEdge):
    u, v = map(int, input().split());
    edges[u].append(v);
    edges[v].append(u);

countVertex(edges, 1);

print(visited.count(True)-1);