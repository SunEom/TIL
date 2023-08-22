// 2670 연속부분최대곱

import Foundation

let n = Int(readLine()!)!

var dp = Array(repeating: 0.0, count: n)

var arr = [Double]()

for _ in 0..<n {
    arr.append(Double(readLine()!)!)
}

dp[0] = arr[0]

for i in stride(from: 1, to: n, by: 1) {
    dp[i] = max(arr[i], dp[i-1]*arr[i])
}

var result = dp.max()!

let digit = pow(10.0, 3.0)
result = round(result*digit)/digit

print(NSString(format:"%.3f", result))
