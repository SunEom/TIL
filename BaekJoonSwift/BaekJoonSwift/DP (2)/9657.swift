// 9657 돌 게임 3

import Foundation

let N = Int(readLine()!)!
let winner = ["SK","CY"]
var dp = Array(repeating: 0, count: 1001)

dp[1] = 0
dp[2] = 1
dp[3] = 0
dp[4] = 0

if N >= 5 {
    for i in 5...1000 {
        dp[i] = dp[i-1] == 1 || dp[i-3] == 1 || dp[i-4] == 1 ? 0 : 1
    }
}

print(winner[dp[N]])
