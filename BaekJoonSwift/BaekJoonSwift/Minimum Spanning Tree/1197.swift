// 최소 스패닝 트리

import Foundation

func find(_ x: Int) -> Int {
    if parent[x] == x { return x }
    else {
        parent[x] = find(parent[x])
        return find(parent[x])
    }
}

func union(_ x: Int, _ y: Int) {
    
    let s1 = find(x)
    let s2 = find(y)
    
    if s1 != s2 {
        parent[s2] = s1
    }
    
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let v = input[0]
let e = input[1]

var parent = Array(0...v)

var edges = [(a: Int, b: Int, cost: Int)]()

for _ in 0..<e {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    edges.append((temp[0], temp[1], temp[2]))
}

edges.sort { $0.cost < $1.cost }

var selectedEdgeCount = 0
var result = 0
for edge in edges {
    if selectedEdgeCount == v-1 {
        break
    }
    
    if find(edge.a) != find(edge.b) {
        result += edge.cost
        union(edge.a, edge.b)
        selectedEdgeCount += 1
    }
}

print(result)
