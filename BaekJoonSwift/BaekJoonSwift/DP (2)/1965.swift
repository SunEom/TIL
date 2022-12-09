//1965 상자넣기

import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = Array(repeating: [Int](), count: n)
var result = 1
dp[0] = [arr[0], 1]

for i in 1..<n {
    var t = [arr[i], 1]
    
    for j in 0..<i {
        if t[0] > dp[j][0] {
            t[1] =  max(t[1], dp[j][1] + 1)
            result = max(result, t[1])
        }
    }
    dp[i] = t
}

print(result)
