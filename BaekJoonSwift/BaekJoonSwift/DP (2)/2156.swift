// 2156 포도주 시식

let n = Int(readLine()!)!
var arr = [0]

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

var dp = Array(repeating: 0, count: n+1)

if dp.count > 1 {
    dp[1] = arr[1]
}

if dp.count > 2 {
    dp[2] = arr[1] + arr[2]
}


for i in stride(from: 3, through: n, by: 1) {
    dp[i] = max(dp[i-2]+arr[i], dp[i-3] + arr[i-1] + arr[i], dp[i-1])
}

print(dp.max()!)
