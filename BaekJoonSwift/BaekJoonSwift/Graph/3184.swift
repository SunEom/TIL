// 3184 양

import Foundation

var arr = [[String]]()
var result : (sheep: Int, wolf: Int) = (0, 0)
let input = readLine()!.split(separator: " ").map { Int(String($0))! }

for _ in 0..<input[0] {
    arr.append(Array(readLine()!.map { String($0)}))
}

var visited = Array(repeating: Array(repeating: false, count: input[1]), count: input[0])

for i in 0..<input[0] {
    for j in 0..<input[1] {
        if !visited[i][j] && arr[i][j] != "#" {
            dfs(i, j)
        }
    }
}


func dfs(_ r: Int, _ c: Int) {
    var queue = [(r, c)]
    visited[r][c] = true
    var count : (sheep: Int, wolf: Int) = (0, 0)
    let cases = [(1,0), (0,1), (-1,0), (0,-1)]
    
    while queue.count > 0 {
        let t = queue.removeFirst()
        
        if arr[t.0][t.1] == "o" {
            count.sheep += 1
        } else if arr[t.0][t.1] == "v" {
            count.wolf += 1
        }
        
        for a in cases {
            
            let rt = t.0 + a.0
            let ct = t.1 + a.1
            
            if rt >= 0 && rt < input[0] && ct >= 0 && ct < input[1] && !visited[rt][ct] && arr[rt][ct] != "#" {
                visited[rt][ct] = true
                queue.append((rt, ct))
            }
        }
    }
    
    if count.sheep > count.wolf {
        result.sheep += count.sheep
    } else {
        result.wolf += count.wolf
    }
}

print(result.sheep, result.wolf)
