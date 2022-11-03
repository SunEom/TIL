// 숨바꼭질 3

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var visited = Array(repeating: 100001, count: 100001)

func start(s: Int, t: Int) {
    var queue = [Int]()
    
    visited[s] = 0
    queue.append(s)
    
    if s == t {
        return
    }
    
    while !queue.isEmpty {
        let v = queue.removeFirst()
        
        if v == t {
            break
        }
        
        if v != 0, v*2 <= 100000 && visited[v*2] == 100001  {
            visited[v*2] = visited[v]
            queue.append(v*2)
        }
        
        if v-1 >= 0 && visited[v-1] == 100001 {
            visited[v-1] = visited[v] + 1
            queue.append(v-1)
        }
        
        if v+1 <= 100000 && visited[v+1] == 100001 {
            visited[v+1] = visited[v] + 1
            queue.append(v+1)
        }
    }
}

start(s: input[0], t: input[1])
print(visited[input[1]])

