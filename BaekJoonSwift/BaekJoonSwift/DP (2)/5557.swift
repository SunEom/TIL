// 5557 1학년

import Foundation

let N = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 21), count: N)
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

dp[0][arr[0]] = 1

for r in 0..<N-1 {
    for c in 0...20 {
        if dp[r][c] != 0 {
            if c + arr[r+1] <= 20 {
                dp[r+1][c+arr[r+1]] += dp[r][c]
            }
            
            if c - arr[r+1] >= 0 {
                dp[r+1][c-arr[r+1]] += dp[r][c]
            }
        }
    }
}

print(dp[dp.count-2][arr.last!])
