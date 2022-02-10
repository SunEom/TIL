import heapq
import sys

N = int(sys.stdin.readline())

temp = []
heapq.heapify(temp)

for _ in range(N):
    heapq.heappush(temp, int(sys.stdin.readline()))


while len(temp) != 0:
    print(heapq.heappop(temp))