// 14728 벼락치기

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = Array(repeating: Array(repeating: 0, count: input[1]+1), count: input[0]+1)
var list = [(time: Int, score: Int)]()

list.append((0,0))
for _ in 0..<input[0] {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    list.append((temp[0], temp[1]))
}

for i in 1...input[0] {
    for j in 0...input[1] {
        if j >= list[i].time {
            dp[i][j] = max(dp[i-1][j], dp[i-1][j-list[i].time] + list[i].score)
        } else {
            dp[i][j] = dp[i-1][j]
        }
    }
}

print(dp[input[0]][input[1]])
