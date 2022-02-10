import heapq
import sys


N = int(sys.stdin.readline())

li = []
heapq.heapify(li)
result = ""

while N != 0:
    heapq.heappush(li, N%10)
    N//=10

while len(li) != 0:
    result+=str(heapq.heappop(li))

print(result[::-1])