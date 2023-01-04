//1516 게임 개발

import Foundation

let N = Int(readLine()!)!
var adjMat = Array(repeating: Array(repeating: 0, count: N+1), count: N+1)
var cost = [0]
var visited = Array(repeating: false, count: N+1)

for i in 1...N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    cost.append(input[0])
    for j in input[1..<input.count-1] {
        adjMat[j][i] = 1
    }
}

var result = cost

var queue = [Int]()

for i in 1...N {
    var t = true
    
    for j in 1...N {
        if adjMat[j][i] == 1 {
            t = false
            break
        }
    }
    if t {
        queue.append(i)
        visited[i] = true
    }
}

    
while queue.count > 0 {
    let k = queue.removeFirst()

    for i in 1...N {
        if adjMat[k][i] == 1 {
            adjMat[k][i] = 0
            
            var t = true
            
            for j in 1...N {
                if adjMat[j][i] == 1 {
                    t = false
                    result[i] = max(result[i], cost[i]+result[k])
                    break
                }
            }
            if t {
                queue.append(i)
                visited[i] = true
                result[i] = max(result[i], cost[i]+result[k])
            }
        }
        
    }
}

print(result[1...].map { String($0) }.joined(separator: "\n"))
