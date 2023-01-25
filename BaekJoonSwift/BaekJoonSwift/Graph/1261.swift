// 1261 알고스팟

import Foundation

let INF = 999999
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let R = input[1]
let C = input[0]
var arr = [[Int]]()
var visited = Array(repeating: Array(repeating: INF, count: C), count: R)
for _ in 0..<R {
    let t = Array(readLine()!).map { Int(String($0))! }
    arr.append(t)
}

visited[0][0] = 0

func solve() {
    var queue = [(0,0)]
    let direction = [(1,0),(0,1),(-1,0),(0,-1)]
    
    while queue.count > 0 {
        let t = queue.removeFirst()
        
        for d in direction {
            let r = t.0 + d.0
            let c = t.1 + d.1
            
            if (0..<R).contains(r) && (0..<C).contains(c) {
                if arr[r][c] == 1 {
                    if visited[r][c] > visited[t.0][t.1] + 1 {
                        visited[r][c] = visited[t.0][t.1] + 1
                        queue.append((r,c))
                    }
                } else {
                    if visited[r][c] > visited[t.0][t.1] {
                        visited[r][c] = visited[t.0][t.1]
                        queue.append((r,c))
                    }
                }
            }
        }
    }
    
    print(visited[R-1][C-1])
    
}

solve()
