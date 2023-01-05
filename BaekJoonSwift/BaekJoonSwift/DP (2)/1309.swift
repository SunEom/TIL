// 1309 동물원

import Foundation

let N = Int(readLine()!)!
var dp = Array(repeating: 0, count: N+1)

dp[0] = 1
dp[1] = 3

for i in 2..<N+1 {
    dp[i] = ((2*dp[i-1]) + dp[i-2]) % 9901
}

print(dp[N])
