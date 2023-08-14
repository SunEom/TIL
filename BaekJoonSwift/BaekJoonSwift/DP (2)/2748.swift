// 2748 피보나치 수2

var dp = [0, 1, 1]
let n = Int(readLine()!)!

while dp.count <= n {
    let lastIdx = dp.count-1
    dp.append(dp[lastIdx]+dp[lastIdx-1])
}

print(dp[n])
