// 11060 점프 점프

import Foundation

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
let INF = 999999
var dp = Array(repeating: INF, count: N)

dp[0] = 0

var queue = [0]

while !queue.isEmpty {
    let t = queue.removeFirst()
    
    if t+1 <= min(t + arr[t], arr.count-1) {
        for k in t+1...min(t + arr[t], arr.count-1) {
            if dp[k] == INF {
                dp[k] = dp[t] + 1
                queue.append(k)
            }
        }
    }
    
}

print(dp[N-1] == INF ? -1 : dp[N-1])
