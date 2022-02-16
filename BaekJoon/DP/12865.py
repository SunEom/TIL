import sys


n, k = map(int, sys.stdin.readline().split())

li = []

for _ in range(n):
    w, v = map(int, sys.stdin.readline().split())
    li.append((w,v))

li = sorted(li, key = lambda x: x[1]/x[0])

dp = []
dp2 = [x[0] for x in li]

for x in li:
    if x[0] <= k:
        dp.append(x[1])
    else:
        dp.append(-1)

for i in range(n):
    for j in range(i):
        if li[i][0] + dp2[j] <= k:
            temp = max(dp[i], dp[j]+li[i][1])
                
            if temp == dp[j]+li[i][1]:
                dp2[i] = li[i][0] + dp2[j]

            if dp[i] == dp[j]+li[i][1]:
                dp2[i] = min(dp2[i], li[i][0] + dp2[j])

            dp[i] = temp
            
print(dp ,dp2)
print(max(dp))