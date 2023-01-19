import Foundation

var dp = Array(repeating: 0, count: 10001)
dp[0] = 1

let T = Int(readLine()!)!
for k in 1...3 {
    for i in k...10000 {
        dp[i] += dp[i-k]
    }
}

var result = ""
for _ in 0..<T {
    result += "\(dp[Int(readLine()!)!])\n"
}

print(result)
