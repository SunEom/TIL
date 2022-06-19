import Foundation

var edges = Array(repeating: [Int](), count: 101)
var visited = Array(repeating: 0, count: 101)

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

for _ in 0..<input[0]+input[1] {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    edges[temp[0]].append(temp[1])
}

for i in 1...100 {
    if edges[i].count == 0 {
        for j in 1...6 {
            if i+j <= 100 {
                edges[i].append(i+j)
            }
        }
    }
}

func bfs() {
    var queue = [1]
    var idx = 0
    visited[1] = 0
    
    while idx < queue.count {
        
        let t = queue[idx]
        idx += 1
        for v in edges[t] {
            if visited[v] == 0 {
                var temp = v
                while edges[temp].count == 1 && visited[temp] == 0 {
                    temp = edges[temp][0]
                }
                
                
                if visited[temp] == 0 {
                    queue.append(temp)
                    visited[temp] = visited[t] + 1
                }
                
                
                if visited[100] != 0 {
                    print(visited[100])
                    return
                }
                
            }
        }
        print(idx, queue, visited)
    }
    
}


bfs()

print(visited)
