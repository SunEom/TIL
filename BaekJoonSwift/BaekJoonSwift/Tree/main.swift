let N = Int(readLine()!)!
var edges = Array(repeating: [Int](), count: N+1)
var visited = Array(repeating: -1, count: N+1)

for _ in 0..<N-1 {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    edges[input[0]].append(input[1])
    edges[input[1]].append(input[0])
}

func bfs(start: Int) {
    var queue = [start]
    visited[start] = 1
    var idx = 0
    
    while queue.count > idx {
        let temp = queue[idx]
        idx += 1
        
        for v in edges[temp] {
            if visited[v] == -1 {
                queue.append(v)
                visited[v] = temp
            }
        }
    }
}

bfs(start: 1)
visited[2...].forEach{ print($0) }
