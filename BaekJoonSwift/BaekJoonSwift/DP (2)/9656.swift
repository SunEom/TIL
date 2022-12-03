// 9656 돌 게임 2

import Foundation

var dp = [1, 0, 1]

var i = 3

let N = Int(readLine()!)!

while dp.count < N+1 {
    if dp[i-1] == 1 && dp[i-3] == 1 {
        dp.append(0)
    } else {
        dp.append(1)
    }
    i += 1
}

print(dp[N] == 1 ? "SK" : "CY")

