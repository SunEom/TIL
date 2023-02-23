// 1916 최소비용 구하기

import Foundation

let INF = 999999999

let N = Int(readLine()!)!
let M = Int(readLine()!)!

var adjList = Array(repeating: [(end: Int, value: Int)](), count: N+1)
var visited = Array(repeating: false, count: N+1)
var distance = Array(repeating: INF, count: N+1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    adjList[input[0]].append((input[1], input[2]))
}

let target = readLine()!.split(separator: " ").map { Int(String($0))! }

distance[target[0]] = 0

func solve(now: Int) {
    if now == target[1] { return }
    
    visited[now] = true
    
    for (end, value) in adjList[now] {
        distance[end] = min(distance[end], distance[now] + value)
    }
    
    let next = distance.enumerated()
            .filter({ !visited[$0.offset] })
            .min(by: { $0.element < $1.element })!.offset
    
    solve(now: next)
}


solve(now: target[0])
print(distance[target[1]])
