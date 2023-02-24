// 1926 그림

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]
var arr = [[Int]]()
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var maxArea = 0

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

func solve(_ start: (r: Int, c: Int)) {
    var area = 1
    visited[start.r][start.c] = true
    var queue = [start]
    let direction = [(1,0),(0,1),(-1,0),(0,-1)]
    
    while !queue.isEmpty {
        let t = queue.removeFirst()
        for d in direction {
            let tr = t.r + d.0
            let tc = t.c + d.1
            
            if (0..<n).contains(tr) && (0..<m).contains(tc) && !visited[tr][tc] && arr[tr][tc] == 1 {
                visited[tr][tc] = true
                queue.append((tr,tc))
                area += 1
            }
        }
    }
    
    maxArea = max(maxArea, area)
}

var cnt = 0
for i in 0..<n {
    for j in 0..<m {
        if !visited[i][j] && arr[i][j] == 1 {
            solve((i,j))
            cnt += 1
        }
    }
}

print(cnt)
print(maxArea)
