// 14501 퇴사

import Foundation

let n = Int(readLine()!)!
var tarr = [0]
var parr = [0]
var dp = Array(repeating: 0, count: n+2)

for _ in 0..<n {
    let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
    tarr.append(input[0])
    parr.append(input[1])
}


for i in 1..<tarr.count {
    for j in stride(from: i+tarr[i], to: dp.count, by: 1) {
        if dp[j] < dp[i] + parr[i] {
            dp[j] = dp[i] + parr[i]
        }
    }
}

print(dp.last!)
