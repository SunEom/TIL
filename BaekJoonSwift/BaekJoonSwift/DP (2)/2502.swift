// 2502 떡 먹는 호랑이

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let d = input[0]
let k = input[1]

var dp = [[Int]]()
dp.append([])
dp.append([1, 0])
dp.append([0, 1])

while dp.count < d+1 {
    let len = dp.count
    dp.append([dp[len-2][0]+dp[len-1][0], dp[len-2][1]+dp[len-1][1]])
}

for i in 1...k {
    if (k-dp[d][0]*i)%dp[d][1] == 0 {
        print(i)
        print((k-dp[d][0]*i)/dp[d][1])
        break
    }
}

