import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
let R = input[2]
var order = 1
var result = ""

var queue = [Int]()
var visited = Array(repeating: 0, count: N+1)
var edges =  Array(repeating: [Int](), count: N+1)


for _ in 0..<M {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    edges[temp[0]].append(temp[1])
    edges[temp[1]].append(temp[0])
}

for i in 1...N {
    edges[i].sort()
}

func bfs(_ r: Int) {
    visited[r] = order
    order += 1
    queue.append(r)
    var idx = 0
    while idx < queue.count {
        let temp = queue[idx]
        idx += 1
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

for i in 1...N {
    result += "\(visited[i])\n"
}

print(result)
