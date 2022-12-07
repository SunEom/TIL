// 11055 가장 큰 증가 부분 수열

import Foundation

var dp = [(last: Int, sum: Int)]()

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

dp.append((arr[0], arr[0]))
var result = arr[0]

for i in 1..<arr.count {
    var temp = (arr[i], arr[i])
    
    for j in 0..<dp.count {
        if dp[j].0 < temp.0 {
            temp.1 = max(temp.1, dp[j].1 + temp.0)
        }
    }
    
    dp.append(temp)
    result = max(result, temp.1)
}

print(result)
