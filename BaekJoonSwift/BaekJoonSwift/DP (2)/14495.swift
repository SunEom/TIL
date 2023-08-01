// 14495 피보나치 비스무리한 수열

let n = Int(readLine()!)!

var dp = Array(repeating: 0, count: n+1)

dp[1] = 1

if n >= 2 {
    dp[2] = 1
}

if n >= 3 {
    dp[3] = 1
}


for i in stride(from: 4, through: n, by: 1) {
    dp[i] = dp[i-1] + dp[i-3]
}

print(dp[n])
