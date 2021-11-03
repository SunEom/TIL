from collections import deque

INF = 999999

def initVisited(n, m):
    visited = []
    for i in range(n):
        temp = [False]*m
        visited.append(temp)
    return visited

def bfs():
    q = deque()

    for p in startingPoint:
        distance[p[0]][p[1]] = 0
        visited[p[0]][p[1]] = True
        q.append([p[0],p[1]])

    while len(q) !=0 :
        [r, c] = q.popleft()

        #위
        if r-1 >= 0 and r-1 < n  and c>=0 and c < m :
            if visited[r-1][c] == False and distance[r-1][c] > distance[r][c] +1:
                distance[r-1][c] = distance[r][c] +1
                visited[r-1][c] = True
                q.append([r-1, c])

        #아래
        if r+1 >= 0 and r+1 < n  and c>=0 and c < m :
            if visited[r+1][c] == False and distance[r+1][c] > distance[r][c] +1:
                distance[r+1][c] = distance[r][c] +1
                visited[r+1][c] = True
                q.append([r+1, c])
        #좌
        if r >= 0 and r < n  and c-1>=0 and c-1 < m :
            if visited[r][c-1] == False and distance[r][c-1] > distance[r][c] +1:
                distance[r][c-1] = distance[r][c] +1
                visited[r][c-1] = True
                q.append([r, c-1])

        #우
        if r >= 0 and r < n  and c+1>=0 and c+1 < m :
            if visited[r][c+1] == False and distance[r][c+1] > distance[r][c] +1:
                distance[r][c+1] = distance[r][c] +1
                visited[r][c+1] = True
                q.append([r, c+1])

m, n = map(int, input().split())

startingPoint = []
distance = []
visited = initVisited(n, m)

for i in range(n):
    temp = list(map(int, input().split()))
    for j in range(len(temp)):
        if temp[j] == 0:
            temp[j] = INF
        elif temp[j] == 1:
            startingPoint.append([i,j])
    distance.append(temp)
    
bfs()

max = distance[0][0]
for i in range(len(distance)):
    for j in range(len(distance[0])):
        if distance[i][j] > max :
            max = distance[i][j]

if max == INF:
    print(-1)
else :
    print(max)