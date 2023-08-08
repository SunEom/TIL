// 1149 RGB 거리

import Foundation

let N = Int(readLine()!)!
var arr = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: 3), count: N)

for _ in 0..<N {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(temp)
}

dp[0] = arr[0]

for i in stride(from: 1, to: dp.count, by: 1) {
    dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + arr[i][0]
    dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + arr[i][1]
    dp[i][2] = min(dp[i-1][0], dp[i-1][1]) + arr[i][2]
}

print(dp.last!.min()!)
