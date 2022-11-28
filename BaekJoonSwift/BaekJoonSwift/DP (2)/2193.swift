import Foundation

var dp = [0, 1]

let n = Int(readLine()!)!

while dp.count < n + 1 {
    dp.append(dp[dp.count-1] + dp[dp.count-2])
}

print(dp[n])
