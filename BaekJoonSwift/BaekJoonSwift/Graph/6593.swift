// 6593 상범 빌딩

import Foundation

var result = ""
while true {
    let INF = 9999999
    var start = (-1,-1,-1)
    var goal = (-1,-1,-1)
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    var visited = Array(repeating: Array(repeating: Array(repeating: INF, count: input[2]), count: input[1]), count: input[0])
    if (input[0], input[1], input[2]) == (0,0,0) {
        break
    }
    
    var arr = [[[Character]]]()
    
    for i in 0..<input[0] {
        var tarr = [[Character]]()
        for j in 0..<input[1] {
            let temp = Array(readLine()!)
            for k in 0..<input[2] {
                if temp[k] == "S" {
                    start = (i,j,k)
                } else if temp[k] == "E" {
                    goal = (i,j,k)
                }
            }
            tarr.append(temp)
        }
        arr.append(tarr)
        _ = readLine()
    }
    
    var queue = [start]
    let direction = [(1,0,0),(0,1,0),(0,0,1),(-1,0,0),(0,-1,0),(0,0,-1)]
    
    visited[start.0][start.1][start.2] = 0
    
    while !queue.isEmpty {
        let t = queue.removeFirst()
        
        for d in direction {
            let i = t.0 + d.0
            let j = t.1 + d.1
            let k = t.2 + d.2
            
            if (0..<input[0]).contains(i) && (0..<input[1]).contains(j) && (0..<input[2]).contains(k) && (arr[i][j][k] == "." || arr[i][j][k] == "E") && visited[i][j][k] > visited[t.0][t.1][t.2] + 1 {
                visited[i][j][k] = visited[t.0][t.1][t.2] + 1
                queue.append((i,j,k))
            }
        }
    }
    
    if visited[goal.0][goal.1][goal.2] == INF {
        result += "Trapped!\n"
    } else {
        result += "Escaped in \(visited[goal.0][goal.1][goal.2]) minute(s).\n"
    }
        
}
print(result)
