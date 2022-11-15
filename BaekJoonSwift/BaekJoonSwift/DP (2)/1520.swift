// 내리막길

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let r = input[0], c = input[1]
var mat = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: input[1]), count: input[0])
for _ in 0..<input[0] {
    mat.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

let direction = [(0,1),(1,0),(0,-1),(-1,0)]

func dfs(_ cur : (row: Int, col: Int)) -> Int {
    if cur.row == r-1 && cur.col == c-1 {
        return 1 // 성공
    }
    
    for i in 0..<4 {
        let next: (row: Int, col: Int) = (cur.row + direction[i].0 , cur.col + direction[i].1)
        
        if next.row < 0 || next.row >= r || next.col < 0 || next.col >= c {
            continue
        }
        
        if mat[next.row][next.col] < mat[cur.row][cur.col] {
            if dp[next.row][next.col] > 0 {
                dp[cur.row][cur.col] += dp[next.row][next.col]
            } else if dp[next.0][next.1] == 0 {
                dp[cur.row][cur.col] += dfs(next)
            }
        }
    }
    
    if dp[cur.row][cur.col] == 0 { // 접근 불가
        dp[cur.row][cur.col] = -1
        return 0
    } else {
        return dp[cur.row][cur.col]
    }
}

let answer = dfs((0,0))

if answer == -1 {
    print(0)
} else {
    print(answer)
}
