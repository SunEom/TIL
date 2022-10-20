// 가장 긴 증가하는 부분 수열 4

import Foundation

let a = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int($0)!}
var dp = Array(repeating: 1, count: 1001)
var result = ""

for i in 1..<a{
    for j in 0..<i {
        if arr[i] > arr[j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}

var maxCount = dp.max()!
print(maxCount)

for i in stride(from: a-1, through: 0, by: -1) {
    if dp[i] == maxCount {
        result = "\(arr[i]) " + result
        maxCount -= 1
    }
}

print(result)
