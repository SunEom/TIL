// 이동하기

import Foundation

let temp = readLine()!.split(separator: " ").map { Int(String($0))! }

var dp = Array(repeating: Array(repeating: 0, count: temp[1]+1), count: temp[0]+1)

for i in 1...temp[0] {
    dp[i] = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
}

var arr = dp

for i in 1...temp[0] {
    for j in 1...temp[1] {
        dp[i][j] = arr[i][j] + max(dp[i-1][j-1], dp[i-1][j], dp[i][j-1])
    }
}

print(dp[temp[0]][temp[1]])
