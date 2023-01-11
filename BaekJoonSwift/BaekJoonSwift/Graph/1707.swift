// 1707 이분 그래프

import Foundation

let T = Int(readLine()!)!
var result = ""


func solve() {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let v = input[0]
    let e = input[1]
    var visited = Array(repeating: false, count: v+1)
    visited[0] = true
    var edges = Array(repeating: [Int](), count: v+1)
    var s = [Int: Int]()

    for _ in 0..<e {
        let t = readLine()!.split(separator: " ").map { Int(String($0))! }
        edges[t[0]].append(t[1])
        edges[t[1]].append(t[0])
    }

    var queue = [1]
    s[1] = 1
    visited[1] = true

    while true {
        if queue.isEmpty {
            guard let f = visited.firstIndex(of: false) else { break }
            visited[f] = true
            s[f] = 1
            queue.append(f)
        }
        
        let t = queue.removeFirst()

        for v in edges[t] {
            if !visited[v] {
                if s[t] == 1 {
                    for vertex in edges[v] {
                        if s[vertex] == 2 {
                            result += "NO\n"
                            return
                        }
                    }
                    visited[v] = true
                    s[v] = 2
                    queue.append(v)
                } else if s[t] == 2 {
                    for vertex in edges[v] {
                        if s[vertex] == 1 {
                            result += "NO\n"
                            return
                        }
                    }
                    visited[v] = true
                    s[v] = 1
                    queue.append(v)
                }
            }
        }
    }

    result += "YES\n"
}

for _ in 0..<T {
    solve()
}

print(result)


