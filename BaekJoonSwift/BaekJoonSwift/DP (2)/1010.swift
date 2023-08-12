// 1010 다리 놓기

import Foundation
var dp = Array(repeating: Array(repeating: 0, count: 31), count: 31)

for i in 0...30 {
    for j in 0...i {
        if i == j || j == 0 {
            dp[i][j] = 1
            continue
        }
        dp[i][j] = dp[i-1][j-1] + dp[i-1][j]
    }
}

let n = Int(readLine()!)!
var result = ""

for _ in 0..<n {
    let input = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted()
    result += "\(dp[input[1]][input[0]])\n"
}

print(result)
