// 11722 가장 긴 감소하는 부분 수열

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = Array(repeating: 1, count: n)

for i in stride(from: 1, to: n, by: 1) {
    for j in stride(from: 0, to: i, by: 1) {
        if arr[i] < arr[j] {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

print(dp.max()!)
