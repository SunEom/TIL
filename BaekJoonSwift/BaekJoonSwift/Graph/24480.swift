import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
let R = input[2]
var result = ""
var order = 1

var edges = Array(repeating: [Int](), count: N+1)
var visited = Array(repeating: 0, count: N+1)

for _ in 0..<M {
    let temp = readLine()!.split(separator: " ").map { Int($0)! }
    edges[temp[0]].append(temp[1])
    edges[temp[1]].append(temp[0])
}

for i in 1...N {
    edges[i].sort(by: >)
}

func dfs(r: Int) {
    visited[r] = order
    order += 1
    
    for v in edges[r] {
        if visited[v] == 0 {
            dfs(r: v)
        }
    }
}

dfs(r: R)

for i in 1...N {
    result += "\(visited[i])\n"
}

print(result)
