// 트리의 지름

import Foundation

func maxIndex (arr: [Int]) -> Int {
    
    var maxIdx = 1
    var maxValue = arr[0]
    
    for i in 1..<arr.count {
        if arr[i] > maxValue {
            maxIdx = i
            maxValue = arr[i]
        }
    }
    
    return maxIdx
    
}

let N = Int(readLine()!)!
var edges = Array(repeating: [(Int, Int)](), count: N+1)
var visited = Array(repeating: -1, count: N+1)

for _ in 0..<N {
    let command = readLine()!.split(separator: " ").map { Int(String($0))! }
    var i = 1
    while command[i] != -1 {
        edges[command[0]].append((command[i], command[i+1]))
        i += 2
    }
}


// 첫번째 DFS
var stack = [1]
visited[1] = 0

while !stack.isEmpty {
    let v = stack.removeLast()
    
    for e in edges[v] {
        if visited[e.0] == -1 {
            visited[e.0] = visited[v] + e.1
            stack.append(e.0)
        }
    }
}


var t = maxIndex(arr: visited)
stack = [t]
visited = Array(repeating: -1, count: N+1)
visited[t] = 0

while !stack.isEmpty {
    let v = stack.removeLast()
    
    for e in edges[v] {
        if visited[e.0] == -1 {
            visited[e.0] = visited[v] + e.1
            stack.append(e.0)
        }
    }
}

print(visited[maxIndex(arr: visited)])
