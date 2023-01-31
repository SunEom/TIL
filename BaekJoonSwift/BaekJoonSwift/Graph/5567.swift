// 5567 결혼식

import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var edges = Array(repeating: [Int](), count: n+1)
var visited = Array(repeating: false, count: n+1)
visited[1] = true

for _ in 0..<m {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    edges[temp[0]].append(temp[1])
    edges[temp[1]].append(temp[0])
}

var queue = [Int]()

for v in edges[1] {
    visited[v] = true
    for t in edges[v] {
        visited[t] = true
    }
}

var result = 0
for i in  2..<visited.count {
    if visited[i] {
        result += 1
    }
}
print(result)
