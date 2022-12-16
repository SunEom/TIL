//16194 카드 구매하기 2

import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
var dp = Array(repeating: 0, count: 10001)

for i in 0..<n {
    dp[i + 1] = arr[i]
}

for i in 2...n {
    for j in 1...i {
        dp[i] = dp[i-j] + dp[j] > dp[i] ? dp[i] : dp[i-j] + dp[j]
    }
}

print("\(dp[n])")
