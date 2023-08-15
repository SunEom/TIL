// 2293 동전 1
import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]
var coins = [0]

for _ in 0..<n {
    coins.append(Int(readLine()!)!)
}

var dp = Array(repeating: 0, count: k+1)
dp[0] = 1

for coin in coins {
    for i in 1...k {
        if i >= coin {
            if dp[i] + dp[i-coin] >= Int(pow(2.0, 31.0)) { // 오버플로우 방지
                       dp[i] = 0
            }
            dp[i] += dp[i-coin]
        }
    }
}
print(dp[k])
