// 4811 알약

import Foundation
var dp = Array(repeating: 0, count: 31)
dp[0] = 1
dp[1] = 1
dp[2] = 2

for i in 3...30 {
    var cnt = 0;

    for j in 0..<i {
        cnt += dp[j] * dp[i - 1 - j];
    }

    dp[i] = cnt;
}


var result = ""
while true {
    let N = Int(readLine()!)!
    
    if N == 0 {
        break
    }
    
    result += "\(dp[N])\n"
}

print(result)
