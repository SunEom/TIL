//1947 선물전달

var dp = [0, 0, 1, 2]

let n = Int(readLine()!)!

while dp.count <= n {
    let lastIdx = dp.count - 1
    dp.append(((lastIdx)*(dp[lastIdx] + dp[lastIdx-1]))%1000000000)
}

print(dp[n])
