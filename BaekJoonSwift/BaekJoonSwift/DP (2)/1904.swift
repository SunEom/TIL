// 1904 01타일

let n = Int(readLine()!)!

var dp = [0, 1, 2]

while dp.count <= n {
    let lastIdx = dp.count - 1
    dp.append((dp[lastIdx]+dp[lastIdx-1])%15746)
}

print(dp[n])
