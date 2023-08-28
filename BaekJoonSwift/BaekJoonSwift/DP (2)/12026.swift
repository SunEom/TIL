// 12026 BOJ 거리

let n = Int(readLine()!)!
var arr = Array(readLine()!).map { String($0) }
var dp = Array(repeating: Int.max, count: n)

dp[0] = 0

for i in 1..<n {
    for j in 0..<i {
        switch arr[i] {
            case "B":
                if arr[j] == "J" && dp[j] != Int.max {
                    dp[i] = min(dp[i], dp[j] + (i-j)*(i-j))
                }
            case "O":
                if arr[j] == "B" && dp[j] != Int.max {
                    dp[i] = min(dp[i], dp[j] + (i-j)*(i-j))
                }
            case "J":
                if arr[j] == "O" && dp[j] != Int.max {
                    dp[i] = min(dp[i], dp[j] + (i-j)*(i-j))
                }
            default:
                continue
        }
    }
}

print(dp.last! == Int.max ? -1 : dp.last!)
