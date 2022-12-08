// 2225 합분해

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], k = input[1]
var dp = [[Int]]() //dp[i][j] = 합이 i가 되는 것중 j개의 합으로 이루어진 경우의 수

dp.append([0, 1])
dp.append([0, 1, 2])

if n >= 2 {
    for i in 2...n {
        var t = [0, 1]
        for j in 1...i { // j 자리로 표현
            var temp = 0
            for k in 1...i-j+1 { // 첫자리가 k인 경우
                temp += dp[i-k][j-1]
            }
            t.append(temp)
        }
        dp.append(t)
    }
}

print(dp[6])




