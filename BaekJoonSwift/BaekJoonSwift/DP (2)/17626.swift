// 17626 four squares
import Foundation

let n = Int(readLine()!)!

var dp = Array(repeating: 4, count: n+1)

dp[0] = 0

for i in 1...n {
    for k in 1...Int(sqrt(Double(i))) {
        dp[i] = min(dp[i], dp[i-(k*k)]+1)
    }
}

print(dp[n])
