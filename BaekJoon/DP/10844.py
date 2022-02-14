N = int(input())

dp = [[1,1,1,1,1,1,1,1,1],[2,2,2,2,2,2,2,2,1]]

for n in range(2,N):
    dp.append([0,0,0,0,0,0,0,0,0])
    for i in range(9):
        if i == 0:
            dp[n][0] += dp[n-2][0]
            dp[n][0] += dp[n-1][1]
        elif i == 8:
            dp[n][8] += dp[n-1][7]
        else:
            dp[n][i] += dp[n-1][i+1]
            dp[n][i] += dp[n-1][i-1]

print(sum(dp[N-1])%1000000000)