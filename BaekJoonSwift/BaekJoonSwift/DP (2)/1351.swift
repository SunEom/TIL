// 1351 무한수열

let npq = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = npq[0], p = npq[1], q = npq[2]
var dp = [1]
var i = 1

while dp.count <= n {
    let a = i/p, b = i/q
    dp.append(dp[a] + dp[b])
    i+=1
}

print(dp[n])
