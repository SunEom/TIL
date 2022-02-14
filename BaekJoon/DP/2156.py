import sys


N = int(input())

point = [0 for _ in range(N+1)]
cache = [0 for _ in range(N+1)]

for i in range(1, N+1):
    point[i] = int(sys.stdin.readline())

if N == 1:
    print(point[1])
    exit()

cache[1] = point[1]
cache[2] = cache[1] + point[2]

for i in range(3, N+1):
    temp = max(cache[:i-1])
    cache[i] = max(max(cache[:i-1]), max(cache[:i-2]) + point[i-1]) + point[i]

print(max(cache))