// 1912 연속합

import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map { Int($0)! }
var dp = Array(repeating: 0, count: n)

dp[0] = arr[0]

for i in stride(from: 1, to: n, by: 1) {
    dp[i] = max(arr[i], dp[i-1]+arr[i])
}

print(dp.max()!)
