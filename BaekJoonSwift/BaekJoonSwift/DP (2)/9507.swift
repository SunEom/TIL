//9507 Generations of Tribbles

import Foundation

var dp = [1, 1, 2, 4]
let t = Int(readLine()!)!
var result = ""

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    while dp.count < n+1 {
        let length = dp.count
        dp.append(dp[length-4] + dp[length-3] + dp[length-2] + dp[length-1])
    }
    
    result += "\(dp[n])\n"
}

print(result)
