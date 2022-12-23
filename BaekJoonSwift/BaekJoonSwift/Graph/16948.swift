// 16948 데스 나이트

import Foundation

let n = Int(readLine()!)!

var visited = Array(repeating: Array(repeating: false, count: n), count: n)

let input = readLine()!.split(separator: " ").map {Int(String($0))!}

var r1 = input[0]
var c1 = input[1]

let r2 = input[2]
let c2 = input[3]

func bfs() {
    let direction = [(-2, -1), (-2, 1), (0, -2), (0, 2), (2, -1), (2, 1)]
    var queue = [(r1, c1, 0)]
    visited[r1][c1] = true
    
    while queue.count > 0 {
        let t = queue.removeFirst()
        
        for d in direction {
            let rt = t.0 + d.0
            let ct = t.1 + d.1
            if (0..<n).contains(rt) && (0..<n).contains(ct) && !visited[rt][ct] {
                if rt == r2 && ct == c2 {
                    print(t.2+1)
                    return
                }
                visited[rt][ct] = true
                queue.append((rt, ct, t.2+1))
            }
        }
    }
    
    print(-1)
}


bfs()
