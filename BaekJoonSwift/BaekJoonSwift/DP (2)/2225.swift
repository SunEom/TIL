//2225 합분해

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = input[0]
let k = input[1]

var dp = [Array(repeating: 1, count: n+1), Array(1...n+1)]

while dp.count < k {
    var temp = [1]
    let l = dp.count - 1
    for i in 0...n-1 {
        temp.append((dp[l][i+1] + temp[i])%1000000000)
    }
    dp.append(temp)
}

print(dp[k-1][n])
