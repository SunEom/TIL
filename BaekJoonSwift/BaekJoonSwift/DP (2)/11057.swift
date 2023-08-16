// 11057 오르막 수

let n = Int(readLine()!)!
var dp = Array(repeating: 1, count: 10)

for _ in 0..<n {
    for i in 1...9 {
        dp[i] += dp[i-1]
        dp[i] %= 10007
    }
}

print(dp.last!)
