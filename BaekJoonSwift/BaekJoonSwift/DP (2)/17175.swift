// 17175 피보나치는 지겨웡~

var dp = [1, 1]

let n = Int(readLine()!)!

while dp.count <= n {
    let lastIdx = dp.count - 1
    dp.append((dp[lastIdx-1]+dp[lastIdx]+1)%1_000_000_007)
}

print(dp[n])
