// 4803 트리

import Foundation

var result = ""

var visited: [Bool]!
var edges: [[Int]]!
var i = 0
while true {
    i += 1
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    var treeCnt = 0
    if (input[0], input[1]) == (0, 0) {
        break
    }
    
    let N = input[0], M = input[1]
    
    edges = Array(repeating: [Int](), count: N+1)
    
    for _ in 0..<M {
        let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
        edges[temp[0]].append(temp[1])
        edges[temp[1]].append(temp[0])
    }
    
    
    visited = Array(repeating: false, count: N+1)
    
    for v in 1...N {
        if !visited[v] {
            if dfs(v) {
                treeCnt += 1
            }
        }
    }
    
    if treeCnt == 0 {
        result += "Case \(i): No trees.\n"
    } else if treeCnt == 1 {
        result += "Case \(i): There is one tree.\n"
    } else {
        result += "Case \(i): A forest of \(treeCnt) trees.\n"
    }
    
}

print(result)

func dfs(_ start: Int) -> Bool {
    var stack = [(start,-1)]
    var visitedVertexes = [start]
    var isCycle = false
    
    visited[start] = true
    
    while !stack.isEmpty {
        let (now, prev) = stack.removeLast()
        
        for v in edges[now] {
            if prev == v {
                continue
            } else if visited[v] {
                isCycle = true
                visitedVertexes.append(v)
            } else {
                visited[v] = true
                stack.append((v, now))
            }
        }
    }
    
    return !isCycle
}
