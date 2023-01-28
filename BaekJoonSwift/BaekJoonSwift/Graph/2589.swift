// 2589 보물섬

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let R = input[0]
let C = input[1]
var arr = [[Character]]()
var result = 0

for _ in 0..<R {
    arr.append(Array(readLine()!))
}

for r in 0..<R {
    for c in 0..<C {
        if arr[r][c] == "L" {
            solve(r, c)
        }
    }
}

func solve(_ r: Int, _ c: Int) {
    var queue = [(r,c)]
    let direction = [(1,0),(0,1),(-1,0),(0,-1)]
    var visited = Array(repeating: Array(repeating: -1, count: C), count: R)
    visited[r][c] = 0
    var maxDistance = 0
    
    while !queue.isEmpty {
        let t = queue.removeFirst()
        
        for d in direction {
            let tr = t.0 + d.0
            let tc = t.1 + d.1
            
            if (0..<R).contains(tr) && (0..<C).contains(tc) && arr[tr][tc] == "L" && visited[tr][tc] == -1 {
                queue.append((tr, tc))
                visited[tr][tc] = visited[t.0][t.1] + 1
                maxDistance = max(maxDistance, visited[tr][tc])
            }
        }
    }
    
    result = max(result, maxDistance)
}

print(result)
