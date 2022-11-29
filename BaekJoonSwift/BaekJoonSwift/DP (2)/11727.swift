// 2xn 타일링 2

var dp = [0, 1, 3]

let n = Int(readLine()!)!

while dp.count < n + 1 {
    dp.append((dp[dp.count-1] + dp[dp.count-2]*2)%10007)
}

print(dp[n])
