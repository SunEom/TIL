// 11724 연결 요소의 개수

import Foundation

func bfs(_ s: Int) {
    var queue = [s]
    visited[s] = true
    
    while queue.count > 0 {
        let t = queue.removeFirst()
        
        for e in edges[t] {
            if !visited[e] {
                queue.append(e)
                visited[e] = true
            }
        }
    }
    
    result += 1
}


let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]

var edges = Array(repeating: [Int](), count: N+1)
var visited = Array(repeating: false, count: N+1)
var result = 0

for _ in 0..<M {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    edges[temp[0]].append(temp[1])
    edges[temp[1]].append(temp[0])
}

for i in 1...N {
    if !visited[i] {
        bfs(i)
    }
}

print(result)
