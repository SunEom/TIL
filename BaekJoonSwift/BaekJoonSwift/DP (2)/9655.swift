//9655 돌 게임

let n = Int(readLine()!)!

var dp = [1, 1, 0, 1]
var i = 4
while dp.count <= n {
    if dp[i-1] == 1 && dp[i-3] == 1 {
        dp.append(0)
    } else {
        dp.append(1)
    }
    i += 1
}

print(dp[n] == 1 ? "SK" : "CY")
