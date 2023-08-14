// 2193 이친수

let n = Int(readLine()!)!

var dp = Array(repeating: Array(repeating: 0, count: 2), count: 91) // dp[i][j] : 길이가 i이면서 마지막 자리가 j인 이친수의 개수

dp[1][1] = 1

for i in 2...90 {
    for j in [0,1] {
        if j == 0 {
            dp[i][j] = dp[i-1][0] + dp[i-1][1]
        } else {
            dp[i][j] = dp[i-1][0]
        }
    }
}

print(dp[n].reduce(0, +))
