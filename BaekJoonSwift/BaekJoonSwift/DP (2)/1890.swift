// 1890 점프

let n = Int(readLine()!)!

var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

var dp = Array(repeating: Array(repeating: 0, count: n), count: n)
dp[0][0] = 1

for r in 0..<n {
    for c in 0..<n {
        if arr[r][c] == 0 {
            break
        }
        
        if r+arr[r][c] < n {
            dp[r+arr[r][c]][c] += dp[r][c]
        }
        
        if c+arr[r][c] < n {
            dp[r][c+arr[r][c]] += dp[r][c]
        }
    }
}

print(dp[n-1][n-1])
