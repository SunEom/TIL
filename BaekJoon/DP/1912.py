import sys


N = int(input())

li = list(map(int, sys.stdin.readline().split()))

dp = li.copy()

for i in range(1, N):
    dp[i] = max(dp[i], dp[i-1]+li[i])
print(max(dp))
