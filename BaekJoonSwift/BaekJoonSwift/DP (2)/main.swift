// 오르막 수

import Foundation

let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: 10)

dp = Array(repeating: 1, count: 10)

for _ in 1..<n {
    for i in 1...9 {
        dp[i] += (dp[i-1])
        dp[i] %= 10007
    }
}

var result = 0

for num in dp {
    result += num
}

print(result % 10007)

