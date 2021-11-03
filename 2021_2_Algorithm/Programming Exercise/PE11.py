
import heapq
import queue

INF = 999999
v, e = map(int, input().split())

k = int(input())-1

edges = []
distance = []
prev = []

for i in range(v):
    edges.append([])
    heapq.heappush(distance,[INF,i])
    prev.append(-1)

for i in range(e):
    u, v, w = map(int, input().split())
    u -=1
    v -=1
    edges[u].append([w, v])

distance[k][0] = 0
distance = sorted(distance, key=lambda x: x[0])

for i in range(len(distance)):
    [prev_dis, prev_ver] = distance[i]
    for j in range(len(edges[prev_ver])):
        v = edges[prev_ver][j][1]
        w = edges[prev_ver][j][0]

        vIndex = 0
        for k in range(len(distance)):
            if distance[k][1] == v:
                break
            vIndex+=1

        prevIndex = 0
        for k in range(len(distance)):
            if distance[k][1] == prev_ver:
                break
            prevIndex+=1

        if(distance[vIndex][0] > distance[prevIndex][0] + w):
            distance[vIndex][0] = distance[prevIndex][0] + w
        
        distance = sorted(distance, key=lambda x: x[0])
    
distance = sorted(distance, key=lambda d: d[1])
for a in distance:
    if a[0] == INF:
        print('INF')
    else :
        print(a[0])
