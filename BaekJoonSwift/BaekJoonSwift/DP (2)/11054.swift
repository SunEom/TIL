// 11054 가장 긴 바이토닉 부분 수열

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = Array(repeating: 1, count: n)

for i in stride(from: 1, to: n, by: 1) {
    for j in stride(from: 0, to: i, by: 1){
        if arr[i] > arr[j] {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

var dp2 = Array(repeating: 1, count: n)
let reverseArr = Array(arr.reversed())

for i in stride(from: 1, to: n, by: 1) {
    for j in stride(from: 0, to: i, by: 1){
        if reverseArr[i] > reverseArr[j] {
            dp2[i] = max(dp2[i], dp2[j]+1)
        }
    }
}

dp2.reverse()
var result = 1

for i in 0..<n {
    if result < dp[i] + dp2[i] {
        result = dp[i] + dp2[i]
    }
}

print(result-1)
