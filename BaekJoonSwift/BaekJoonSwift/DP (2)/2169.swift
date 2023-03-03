// 2169 로봇 조종하기

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var arr = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: M), count: N)
for _ in 0..<N {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

dp = arr

var result = Int.min
func solve(now: (Int, Int), visited: [[Bool]], dp: [[Int]]) {
    let direction = [(0,1),(0,-1),(1,0)]
    var tvisited = visited
    tvisited[now.0][now.1] = true
    
    if now == (N-1, M-1) {
        result = max(result, dp[now.0][now.1])
    }
    
    for d in direction {
        let r = now.0 + d.0
        let c = now.1 + d.1
        
        if (0..<N).contains(r) && (0..<M).contains(c) && !tvisited[r][c] {
            var tdp = dp
            tdp[r][c] = tdp[now.0][now.1] + arr[r][c]
            solve(now: (r,c), visited: tvisited, dp: tdp)
        }
    }

    
}

solve(now: (0,0), visited: Array(repeating: Array(repeating: false, count: M), count: N), dp: dp)
print(result)
