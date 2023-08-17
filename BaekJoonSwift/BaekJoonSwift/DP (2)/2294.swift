// 2294 동전 2

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]
let INF = 999999
var dp = Array(repeating: INF, count: 10001)
dp[0] = 0
var coins = [Int]()

for _ in 0..<n {
    coins.append(Int(readLine()!)!)
}

for coin in coins {
    for i in stride(from: coin, through: k, by: 1) {
        dp[i] = min(dp[i], dp[i-coin]+1)
    }
}

print(dp[k] == INF ? -1 : dp[k])
