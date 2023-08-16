// 1699 제곱수의 합

let n = Int(readLine()!)!
var dp = Array(0...n)

for a in stride(from: 1, through: n, by: 1) {
    var i = 0
    
    while i*i <= a {
        dp[a] = min(dp[a], dp[a-(i*i)]+1)
        i+=1
    }
    
}

print(dp[n])

