// 17845 수강 과목

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nk[0]
let k = nk[1]

var lectures = [(i: Int, t: Int)]()
var dp = Array(repeating: Array(repeating: 0, count: n+1), count: k+1)

lectures.append((0,0))

for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    lectures.append((input[0], input[1]))
}


for i in 1...k {
    for j in 0...n {
        if j >= lectures[i].t {
            dp[i][j] = max(dp[i-1][j], dp[i-1][j-lectures[i].t] + lectures[i].i)
        } else {
            dp[i][j] = dp[i-1][j]
        }
    }
}

print(dp.last!.max()!)
