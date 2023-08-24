// 14430 자원캐기

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0]
let m = nm[1]
var arr = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: m), count: n)
let directions = [(-1,0),(0,-1)]
for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

dp[0][0] = arr[0][0]

for i in 0..<n {
    for j in 0..<m {
        for direction in directions {
            let x = i + direction.0
            let y = j + direction.1
            
            if (0..<n).contains(x) && (0..<m).contains(y) {
                dp[i][j] = max(dp[i][j], dp[x][y] + arr[i][j])
            }
        }
    }
}

print(dp[n-1][m-1])
