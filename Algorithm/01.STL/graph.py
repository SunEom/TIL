graph = {};

f = open("graph.txt", 'r')
aline = f.readline()
n, m = aline.split(' ')

n = int(n)
m = int(m)

for i in range(n):
    graph[i+1] = []

for i in range(m):
    aline = f.readline()
    n1, n2 = aline.split(' ')
    n1 = int(n1)
    n2 = int(n2)
    print(n1, n2)
    graph[n1].append(n2)
    graph[n2].append(n1)

for i in range(n):
    graph[i+1].sort()

print(graph)


visited = []

def dfs(graph, v):

    visited.append(v)

    print(v)

    for node in graph:
        if node not in visited:
            dfs(graph, node)
    
    for i in range(n):
        if (i+1 not in visited):
            dfs(graph, i+1)


dfs(graph, 1)

