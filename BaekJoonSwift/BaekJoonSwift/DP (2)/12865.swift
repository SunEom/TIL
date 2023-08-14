// 12865 평범한 배낭

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let n = input[0]
let k = input[1]
var dp = Array(repeating: 0, count: k+1)
var item:[(weight:Int, value: Int)] = [(0,0)]

for _ in 0..<n {
    let temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
    item.append((temp[0], temp[1]))
}

for a in item {
    for i in stride(from: k, through: a.weight, by: -1) {
        dp[i] = max(dp[i], dp[i-a.weight]+a.value)
    }
}
print(dp.last!)

