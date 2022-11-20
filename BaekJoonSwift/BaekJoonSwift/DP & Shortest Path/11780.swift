// 플로이드 2

let N = Int(readLine()!)!
let M = Int(readLine()!)!
let INF = N * 100000
var dp = Array(repeating: Array(repeating: INF, count: N+1), count: N+1)
var route = Array(repeating: Array(repeating: [Int](), count: N+1), count: N+1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    if dp[input[0]][input[1]] > input[2] {
        dp[input[0]][input[1]] = input[2]
        route[input[0]][input[1]] = [input[0], input[1]]
    }
}

for i in 1...N {
    dp[i][i] = 0
}

for k in 1...N {
    for i in 1...N {
        for j in 1...N {
            if dp[i][j] > dp[i][k] + dp[k][j] && min(dp[i][j], dp[i][k] + dp[k][j]) == dp[i][k] + dp[k][j]{
                dp[i][j] = dp[i][k] + dp[k][j]
                route[i][j] = route[i][k] + route[k][j][1...]
            }
        }
    }
}

for i in 1...N {
    route[i][i] = []
}

print(dp[1...].map{ $0[1...].map { String($0 == INF ? 0 : $0) }.joined(separator: " ") }.joined(separator: "\n"))


for r in 1...N {
    for c in 1...N {
        print(route[r][c].count, route[r][c].count/2 != 0 ? route[r][c].map{ String($0) }.joined(separator: " ") : "")
    }
}
