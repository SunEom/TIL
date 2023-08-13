// 11727 2xM 타일링 2

var dp = [0,1,3]

let n = Int(readLine()!)!

while dp.count <= n {
    let lastIdx = dp.count-1
    dp.append((dp[lastIdx-1]*2+dp[lastIdx-0])%10007)
}

print(dp[n])
