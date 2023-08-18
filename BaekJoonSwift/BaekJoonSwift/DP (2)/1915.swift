// 1915 가장 큰 정사각형

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = nm[0]
let m = nm[1]

var arr = [[Int]]()

for _ in 0..<n{
    arr.append(Array(readLine()!).map { Int(String($0))!})
}

var dp = Array(repeating: Array(repeating: 0, count: m), count: n)

var result = 0

for i in 0..<m {
    dp[0][i] = arr[0][i]
    if dp[0][i] == 1 {
        result = 1
    }
}


for i in 0..<n {
    dp[i][0] = arr[i][0]
    if dp[i][0] == 1 {
        result = 1
    }
}


for i in stride(from: 1, to: n, by: 1) {
    for j in stride(from: 1, to: m, by: 1) {
        if arr[i][j] == 0 {
            continue
        }
        dp[i][j] = min(dp[i-1][j-1], dp[i-1][j], dp[i][j-1])+1
        
        if result < dp[i][j]*dp[i][j] {
            result = dp[i][j]*dp[i][j]
        }
    }
}

print(result)
