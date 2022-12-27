// 15988 1, 2, 3 더하기 3

import Foundation

var dp = [0,1,2,4]

let count = Int(readLine()!)!
var result = ""

for _ in 0..<count {
    let n = Int(readLine()!)!
    
    while dp.count < n+1 {
        dp.append((dp[dp.count-1] + dp[dp.count-2] + dp[dp.count-3])%1000000009)
    }
    
    result += "\(dp[n])\n"
}

print(result)

