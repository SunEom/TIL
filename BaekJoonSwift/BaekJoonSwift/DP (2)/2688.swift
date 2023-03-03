// 2688 줄어들지 않아

import Foundation

var dp = Array(repeating: Array(repeating: 0, count: 10), count: 65)

for j in 0..<10 {
    dp[1][j] = 1
}

for i in 2..<65 {
    for j in 0..<10 {
        for k in j..<10 {
            dp[i][k] += dp[i-1][j]
        }
    }
}

var result = ""
let N = Int(readLine()!)!
for _ in 0..<N {
    let arr = dp[Int(readLine()!)!]
    var sum = 0
    for n in arr {
        sum += n
    }
    result += "\(sum)\n"
}
print(result)
