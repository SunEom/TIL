// 17404 RGB 거리 2

let N = Int(readLine()!)!
let MAX = 1000001
var result = Int.max
var cost = [[Int]]()
for _ in 0..<N {
    cost.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

for i in 0..<3 {
    var dp = cost
    
    if i == 0 {
        dp[0][1] = MAX
        dp[0][2] = MAX
    } else if i == 1 {
        dp[0][0] = MAX
        dp[0][2] = MAX
    } else if i == 2 {
        dp[0][0] = MAX
        dp[0][1] = MAX
    }
    
    for j in 1..<cost.count {
        dp[j][0] += min(dp[j-1][1], dp[j-1][2])
        dp[j][1] += min(dp[j-1][0], dp[j-1][2])
        dp[j][2] += min(dp[j-1][0], dp[j-1][1])
    }
    
    if i == 0 {
        result = min(result, dp[N-1][1], dp[N-1][2])
    } else if i == 1 {
        result = min(result, dp[N-1][0], dp[N-1][2])
    } else if i == 2 {
        result = min(result, dp[N-1][0], dp[N-1][1])
    }
}


print(result)
