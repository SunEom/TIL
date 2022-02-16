import sys


N = int(input())

li = list(map(int, sys.stdin.readline().split()))

dp = [1]*N

for i in range(N):
    for j in range(i):
        if li[j] < li[i]:
            dp[i] = max(dp[i],dp[j]+1)

print(max(dp))