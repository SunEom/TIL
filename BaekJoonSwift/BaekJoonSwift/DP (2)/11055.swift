// 11055 가장 큰 증가하는 부분 수열

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = arr

for i in stride(from: 1, to: n, by: 1) {
    for j in stride(from: 0, to: i, by: 1) {
        if arr[i] > arr[j] {
            dp[i] = max(dp[i], dp[j] + arr[i])
        }
    }
}

print(dp.max()!)
