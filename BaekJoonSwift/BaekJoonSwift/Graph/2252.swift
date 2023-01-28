// 2252 줄 세우기

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var indegree = Array(repeating: 0, count: input[0]+1)
var edges = Array(repeating: [Int](), count: input[0]+1)

for _ in 0..<input[1] {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    indegree[temp[1]] += 1
    edges[temp[0]].append(temp[1])
}

var queue = [Int]()

for v in 1...input[0] {
    if indegree[v] == 0 {
        queue.append(v)
    }
}

var result = ""

while !queue.isEmpty {
    let t = queue.removeFirst()
    result += "\(t) "
    
    for edge in edges[t] {
        indegree[edge] -= 1
        if indegree[edge] == 0 {
            queue.append(edge)
        }
    }
}

print(result)
