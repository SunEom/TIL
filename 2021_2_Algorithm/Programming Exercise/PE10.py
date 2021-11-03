import sys
import queue

def bfs(u,v):
    distance[u][v] = 0;
    q = queue.Queue();
    q.put([u,v])
    prev_u = u;
    prev_v = v;

    while(not q.empty()):
        [now_u, now_v] = q.get()
        # 위
        if now_u-1 >=0 and now_u-1 < n and now_v >= 0 and now_v < m:
            if (not adjMat[now_u-1][now_v] == -1) and distance[now_u-1][now_v] > distance[now_u][now_v]+1:
                distance[now_u-1][now_v] = distance[now_u][now_v]+1
                q.put([now_u-1, now_v])

        # 오른쪽
        if now_u >=0 and now_u < n and now_v+1 >= 0 and now_v+1 < m:
            if (not adjMat[now_u][now_v+1] == -1) and distance[now_u][now_v+1] > distance[now_u][now_v]+1:
                distance[now_u][now_v+1] = distance[now_u][now_v]+1
                q.put([now_u, now_v+1])
        # 아래
        if now_u+1 >=0 and now_u+1 < n and now_v >= 0 and now_v < m:
            if (not adjMat[now_u+1][now_v] == -1) and distance[now_u+1][now_v] > distance[now_u][now_v]+1:
                distance[now_u+1][now_v] = distance[now_u][now_v]+1
                q.put([now_u+1, now_v])

        #왼쪽
        if now_u >=0 and now_u < n and now_v-1 >= 0 and now_v-1 < m:
            if (not adjMat[now_u][now_v-1] == -1) and distance[now_u][now_v-1] > distance[now_u][now_v]+1:
                distance[now_u][now_v-1] = distance[now_u][now_v]+1
                q.put([now_u, now_v-1])

        

m, n = map(int, input().split())

adjMat = []
startingPoint = []

distance = []

for i in range(n):
    atemp = list(map(int, input().split()))
    dtemp =[]
    for j in range(len(atemp)):
        if atemp[j] == -1:
            dtemp.append(-1)
        elif atemp[j] == 1:
            startingPoint.append([i,j])
            dtemp.append(sys.maxsize)
        else :
            dtemp.append(sys.maxsize)
    adjMat.append(atemp)
    distance.append(dtemp)

for i in range(len(startingPoint)):
    bfs(startingPoint[i][0],startingPoint[i][1])


if max(map(max, distance)) == sys.maxsize:
    print(-1)
else :
    print(max(map(max, distance)))
    

    
