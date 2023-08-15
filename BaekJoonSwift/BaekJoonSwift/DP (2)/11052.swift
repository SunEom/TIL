//11052 카드 구매하기

import Foundation

let n = Int(readLine()!)!
let arr = [0] + readLine()!.components(separatedBy: " ").map { Int($0)! }
var dp = Array(repeating: 0, count: n+1)

for i in 1...n {
    for j in i...n {
        dp[j] = max(dp[j], dp[j-i] + arr[i])
    }
}

print(dp[n])

