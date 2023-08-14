// 10844 쉬운 계단 수

var dp = Array(repeating: Array(repeating: 0, count: 11), count: 101) // dp[i][j] : i자리 이면서 끝 자리가 j인 계산 수의 개수
let n = Int(readLine()!)!
for i in 1...9 {
    dp[1][i] = 1
}

for i in 2...100 {
    for j in 0...9 {
        if j == 0 {
            dp[i][j] = dp[i-1][j+1] % 1_000_000_000
        } else {
            dp[i][j] = (dp[i-1][j-1] + dp[i-1][j+1])%1_000_000_000
        }
        
    }
}

print(dp[n].reduce(0, +)%1_000_000_000)
