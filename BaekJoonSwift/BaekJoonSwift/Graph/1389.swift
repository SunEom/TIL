// 1389 케빈 베이컨의 6단계 법칙

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var edges = Array(repeating: [Int](), count: input[0] + 1)

for _ in 0..<input[1] {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    edges[temp[0]].append(temp[1])
    edges[temp[1]].append(temp[0])
}

var minValue = Int.max
var result = 0

for i in 1...input[0] {
    let t = solve(i)
    if minValue > t {
        result = i
        minValue = t
    }
}

print(result)

func solve(_ s: Int) -> Int {
    var queue = [s]
    var distance = Array(repeating: 0, count: input[0] + 1)
    var visited = Array(repeating: false, count: input[0] + 1)
    var result = 0
    
    visited[s] = true
    
    while queue.count > 0 {
        let t = queue.removeFirst()
        for e in edges[t] {
            if !visited[e] {
                visited[e] = true
                distance[e] = distance[t] + 1
                queue.append(e)
            }
        }
    }
    
    for d in distance[1...] {
        result += d
    }
    
    return result
}
