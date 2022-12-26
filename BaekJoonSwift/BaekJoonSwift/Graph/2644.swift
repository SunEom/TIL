// 2644 촌수계산

import Foundation

let N = Int(readLine()!)!
let target = readLine()!.split(separator: " ").map { Int(String($0))! }
let c = Int(readLine()!)!
var edges = Array(repeating: [Int](), count: N+1)
var visited = Array(repeating: -1, count: N+1)

for _ in 0..<c {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    edges[input[0]].append(input[1])
    edges[input[1]].append(input[0])
}

func bfs(_ s: Int, _ target : Int) -> Int {
    var queue = [s]
    visited[s] = 0
    
    while queue.count > 0 {
        let t = queue.removeFirst()
        
        for e in edges[t] {
            if visited[e] == -1 {
                queue.append(e)
                visited[e] = visited[t] + 1
                if e == target {
                    return visited[e]
                }
            }
        }
    }
    
    return -1
}

print(bfs(target[0], target[1]))
