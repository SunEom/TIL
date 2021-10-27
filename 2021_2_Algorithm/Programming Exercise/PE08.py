def dfs(start):
    visited[start] = True
    print(start+1, end=' ')

    for i in adjList[start]:
        if visited[i] == False:
            dfs(i)

def bfs(start):
    queue = [start]
    visited[start] = True
    print(start+1, end=' ')
    
    while len(queue) != 0:
        for i in adjList[queue[0]]:
            if visited[i] == False:
                queue.append(i)
                visited[i] = True
                print(i+1, end=' ')
        queue = queue[1:]


n, m, v = map(int, input().split())
adjList=[]
visited=[]

for i in range(n):
    adjList.append([])

for i in range(m):
    a, b = map(int, input().split())
    if b-1 not in adjList[a-1] :
        adjList[a-1].append(b-1);
    if a-1 not in adjList[b-1]:
        adjList[b-1].append(a-1);


for i in range(n):
    adjList[i].sort();


for i in range(n):
    visited.append(False)
dfs(v-1)
print();

visited = []
for i in range(n):
    visited.append(False)

bfs(v-1)


    