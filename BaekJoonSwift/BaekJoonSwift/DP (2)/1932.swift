//1932 정수 삼각형

let n = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<n {
    arr.append([0] + readLine()!.split(separator: " ").map { Int(String($0))! } + [0])
}

var num = 3
var dp = [[Int]]()

for _ in 0..<n {
    dp.append(Array(repeating: 0, count: num))
    num += 1
}

dp[0] = arr[0]
num = 3
for i in stride(from: 1, to: n, by: 1){
    for j in stride(from: 1, to: num, by: 1) {
        dp[i][j] = max(dp[i-1][j-1], dp[i-1][j]) + arr[i][j]
    }
    num += 1
}

print(dp.last!.max()!)
