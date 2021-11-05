import heapq
import sys
INF = sys.maxsize

v, e = map(int, input().split())
k = int(input()) - 1

adjList = []
distance = [INF] * v

for i in range(v):
    adjList.append([])

for i in range(e):
    u, v, w = map(int, input().split())
    u -= 1
    v -= 1
    adjList[u].append([w, v])

h = []

heapq.heappush(h, [0, k])
distance[k] = 0

while len(h) != 0:
    [prev_dis, prev_v] = heapq.heappop(h)
    if distance[prev_v] < prev_dis:
        continue
    for i in adjList[prev_v]:
        dtemp = prev_dis + i[0]
        if dtemp < distance[i[1]]:
            distance[i[1]] = dtemp
            heapq.heappush(h,[dtemp, i[1]])

for i in distance:
    if i == INF:
        print('INF')
    else:
        print(i)