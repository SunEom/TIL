// 9465 스티커
import Foundation

let t = Int(readLine()!)!
var result = ""

for _ in 0..<t {
    let n = Int(readLine()!)!
    var arr = [[Int]]()
    var dp = Array(repeating: Array(repeating: 0, count: n+1), count: 2)
    for _ in 0..<2 {
        arr.append([0] + readLine()!.split(separator: " ").map { Int(String($0))! })
    }
    
    dp[0][1] = arr[0][1]
    dp[1][1] = arr[1][1]
    
    
    for c in stride(from: 2, through: n, by: 1) {
        for r in 0...1 {
            if r == 0 {
                dp[r][c] = max(dp[1][c-2], dp[1][c-1]) + arr[r][c]
            } else {
                dp[r][c] = max(dp[0][c-2], dp[0][c-1]) + arr[r][c]
            }
        }
    }
    
    result += "\(max(dp[0][n], dp[1][n]))\n"
    
}

print(result)
