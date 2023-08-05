// 2775 부녀회장이 될테야

let t = Int(readLine()!)!
var result = ""

for _ in 0..<t {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    var dp = Array(repeating: Array(repeating: 0, count: n+1), count: k+1)
    
    for i in 0...n { // 0층
        dp[0][i] = i
    }
    
    if k > 0 {
        for r in 1...k {
            for c in 1...n {
                dp[r][c] = dp[r-1][c] + dp[r][c-1]
            }
        }
    }
    
    result += "\(dp[k][n])\n"
}

print(result)

