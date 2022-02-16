import sys


N = int(input())

dp = []

for _ in range(N):
    a, b = map(int, sys.stdin.readline().split())
    dp.append((a,b))

dp.sort()

li = [1 for _ in range(N)]

for i in range(N):
    for j in range(i):
        if dp[i][1] > dp[j][1]:
            li[i] = max( li[i] , li[j]+1)

print(N-max(li))