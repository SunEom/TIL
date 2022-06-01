import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0] // 노드의 개수
let M = input[1] // 간선의 개수
let R = input[2]

var order = 1
var edges = Array(repeating: [Int](), count: N+1)
var visited = Array(repeating: 0, count: N+1)
var result = ""

for _ in 0..<M {
    let temp = readLine()!.split(separator: " ").map { Int($0)! }
    edges[temp[0]].append(temp[1])
    edges[temp[1]].append(temp[0])
}

for i in 1...N {
    edges[i].sort(by: > )
}

func bfs(_ r: Int) {
    var queue = [Int]()
    visited[r] = order
    queue.append(r)
    order += 1
    
    while !queue.isEmpty {
        let temp = queue.removeFirst()
        for v in edges[temp] {
            if visited[v] == 0 {
                queue.append(v)
                visited[v] = order
                order += 1
            }
        }
    }
}

bfs(R)

for o in visited[1...] {
    result += "\(o)\n"
}

print(result)
