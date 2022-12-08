// 11722 가장 긴 감소하는 부분 수열

import Foundation

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

var dp = [(lastVal: Int, len: Int)]()
var result = 1
dp.append((arr[0], 1))

for i in 1..<arr.count {
    var t = (arr[i], 1)
    
    for j in 0..<i {
        if t.0 < dp[j].0 {
            t.1 = max(t.1, dp[j].1+1)
        }
    }
    
    result = max(result, t.1)
    dp.append(t)
}

print(result)
