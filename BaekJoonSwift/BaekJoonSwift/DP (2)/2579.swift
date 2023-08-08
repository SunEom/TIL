// 2579 계단 오르기

var stair = [0]
let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: n+1)

for _ in 0..<n {
    stair.append(Int(readLine()!)!)
}

dp[1] = stair[1]
if n > 1 {
    dp[2] = stair[1] + stair[2]
}

for i in stride(from: 3, through: n, by: 1) {
    dp[i] = max(dp[i-2] + stair[i], dp[i-3] + stair[i-1] + stair[i])
}

print(dp[n])
