import Foundation

let input = readLine()!.split(separator: " ").map {Int($0)!}
let N = input[0]
let M = input[1]
let R = input[2]

var order = 1
var visited = [Int]()
var edges = [[Int]]()

for _ in 0...N {
    edges.append([])
    visited.append(0)
}

for _ in 0..<M {
    let temp = readLine()!.split(separator: " ").map {Int($0)!}
    edges[temp[0]].append(temp[1])
    edges[temp[1]].append(temp[0])
}

for i in 1...N {
    edges[i].sort()
}


func dfs(r: Int) {
    visited[r] = order
    order += 1
    
    for e in edges[r] {
        if visited[e] == 0 {
            dfs(r: e)
        }
    }
}

dfs(r: R)

var result = ""
for i in visited[1...]{
    result += "\(i)\n"
}

print(result)
