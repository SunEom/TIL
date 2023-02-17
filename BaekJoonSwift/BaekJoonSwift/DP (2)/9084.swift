// 9084 동전

import Foundation

let T = Int(readLine()!)!
var result = ""

for _ in 0..<T {
    let N = Int(readLine()!)!
    let coins = readLine()!.split(separator: " ").map { Int(String($0))! }
    let M = Int(readLine()!)!
    var dp = [1] + Array(repeating: 0, count: M)
    
    
    for c in coins {
        for i in stride(from: c, through: M, by: 1) {
            dp[i] = dp[i] + dp[i-c]
        }
    }
    
    result += "\(dp.last!)\n"
}

print(result)
