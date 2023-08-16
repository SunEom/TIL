// 11660 구간 합 구하기 5

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = input[0]
let m = input[1]
var arr = [[Int]]()
arr.append(Array(repeating: 0, count: n+1))

for _ in 0..<n {
    arr.append([0] + readLine()!.split(separator: " ").map { Int(String($0))! })
}


var dp = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)

dp[1][1] = arr[1][1]

for r in stride(from: 2, through: n, by: 1) {
    dp[r][1] = dp[r-1][1] + arr[r][1]
}

for c in stride(from: 2, through: n, by: 1) {
    dp[1][c] = dp[1][c-1] + arr[1][c]
}

for r in stride(from: 2, through: n, by: 1) {
    for c in stride(from: 2, through: n, by: 1) {
        dp[r][c] = dp[r][c-1] + dp[r-1][c] - dp[r-1][c-1] + arr[r][c]
    }
}

var result = ""

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x1 = input[0], y1 = input[1], x2 = input[2], y2 = input[3]
    
    var sum = 0
    
    sum = dp[x2][y2] - dp[x2][y1-1] - dp[x1-1][y2] + dp[x1-1][y1-1]
    
    result += "\(sum)\n"
}

print(result)
