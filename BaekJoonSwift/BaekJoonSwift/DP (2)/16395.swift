// 16395 파스칼의 삼각형

import Foundation

var dp = [[], [1], [1,1]]
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let r = input[0],  c = input[1]

while dp.count < r + 1 {
    var t = [1]
    let arr = dp.last!
    for i in 0..<arr.count-1 {
        t.append(arr[i] + arr[i+1])
    }
    t.append(1)
    dp.append(t)
}

print(dp[r][c-1])
