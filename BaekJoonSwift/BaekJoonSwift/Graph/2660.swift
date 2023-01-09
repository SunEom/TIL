//2660 회장뽑기

import Foundation

func bfs(_ s: Int) -> Int {
    var queue = [s]
    var dis = Array(repeating: 0, count: N+1)
    var visited = Array(repeating: false, count: N+1)
    visited[s] = true
    
    while queue.count > 0 {
        let t = queue.removeFirst()
        for e in edges[t] {
            if !visited[e] {
                dis[e] = dis[t] + 1
                visited[e] = true
                queue.append(e)
            }
        }
    }
    return dis[1...].max()!
}

let N = Int(readLine()!)!
var edges = Array(repeating: [Int](), count: N+1)
var priority = Array(repeating: 0, count: N+1)

while true {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    if input[0] == -1 && input[1] == -1 {
        break
    }
    edges[input[0]].append(input[1])
    edges[input[1]].append(input[0])
}

for i in 1...N {
    priority[i] = bfs(i)
}

let p = priority[1...].min()!
let r = (1...N).filter{ priority[$0] == p }
print(p, r.count)
print(r.map { String($0) }.joined(separator: " "))
