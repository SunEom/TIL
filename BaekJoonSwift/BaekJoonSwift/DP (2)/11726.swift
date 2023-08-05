// 11726 2xN 타일링

let n = Int(readLine()!)!

var dp = [0, 1, 2]

var cnt = 3
while dp.count <= n {
    dp.append(dp[cnt-1] + dp[cnt-2])
    cnt += 1
}

print(dp[n])
