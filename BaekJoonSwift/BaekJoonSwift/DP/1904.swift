import Foundation

let n = Int(readLine()!)!
var dp = [1,2]
var i = 2

while dp.count < n {
    dp.append((dp[i-2]+dp[i-1]) % 15746)
    i+=1
}

print(dp[n-1])
