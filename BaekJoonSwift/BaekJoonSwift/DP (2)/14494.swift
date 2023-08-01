// 14494 다이나믹이 뭐에요?

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]

var dp = Array(repeating: Array(repeating: UInt64(0), count: m+1), count: n+1)

for i in 1...m {
    dp[1][i] = 1
}

for j in 1...n {
    dp[j][1] = 1
}

if n > 1 && m > 1 {
    for r in 2...n {
        for c in 2...m {
            dp[r][c] = (dp[r-1][c] % 1_000_000_007 + dp[r][c-1] % 1_000_000_007 + dp[r-1][c-1] % 1_000_000_007) % 1_000_000_007
        }
    }
}


print(dp[n][m])
