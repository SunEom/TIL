// 14501 퇴사

import Foundation

let n = Int(readLine()!)!
var arr = [[Int]]()
var dp = Array(repeating: 0, count: n+1)

for _ in 0..<n {
    let t = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(t)
}

for i in 0..<arr.count {
    
    if i + arr[i][0] < n+1 {
        for j in i + arr[i][0]..<n+1 {
            dp[j] = max(dp[j], dp[i]+arr[i][1])
        }
    }
    
}

var result = 0

for d in dp {
    if d > result { result = d }
}

print(result)
