// 2665 미로 만들기

import Foundation

func solve() {
    var visited = Array(repeating: Array(repeating: 999999, count: N), count: N)
    visited[0][0] = 0
    var queue = [(0,0)]
    let direction = [(1,0),(0,1),(-1,0),(0,-1)]
    
    while !queue.isEmpty {
        let t = queue.removeFirst()
        
        for d in direction {
            let tr = t.0+d.0
            let tc = t.1+d.1
            
            if (0..<N).contains(tr) && (0..<N).contains(tc){
                if arr[tr][tc] == 1 {
                    if visited[tr][tc] > visited[t.0][t.1] {
                        visited[tr][tc] = visited[t.0][t.1]
                        queue.append((tr, tc))
                    }
                } else {
                    if visited[tr][tc] > visited[t.0][t.1] + 1 {
                        visited[tr][tc] = visited[t.0][t.1] + 1
                        queue.append((tr, tc))
                    }
                }
            }
        }
    }
    print(visited[N-1][N-1])
    
}

let N = Int(readLine()!)!
var arr = [[Int]]()

var result = 0

for _ in 0..<N {
    arr.append(Array(readLine()!).map { Int(String($0))! })
}

solve()
