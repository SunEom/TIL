// 1699 제곱수의 합

import Foundation

let n = Int(readLine()!)!
var dp = Array(0...n)

dp[0] = 0
dp[1] = 1

var i = 1
while true {
    if i*i > n {
        break
    }
    dp[i*i] = 1
    i+=1
}


if n >= 2 {
    for a in 2...n {
        var b = 1
        while b*b <= a {
            dp[a] = min(dp[a], dp[a-b*b]+1)
            b+=1
        }
    }
}

print(dp[n])
