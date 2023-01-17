// 2636 치즈

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let rm = input[0]
let cm = input[1]
var arr = [[Int]]()
var cheeseCount = [Int]()
var remain = 0

for _ in 0..<rm {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    for n in temp { if n == 1 { remain += 1} }
    arr.append(temp)
}

func bfs() {
    var queue = [(0,0)]
    var visited = Array(repeating: Array(repeating: false, count: cm), count: rm)
    let direction = [(1,0),(0,1),(-1,0),(0,-1)]
    visited[0][0] = true
    var cheese = 0
    while queue.count > 0 {
        let t = queue.removeFirst()
        
        for d in direction {
            let r = t.0 + d.0
            let c = t.1 + d.1
            
            if (0..<rm).contains(r) && (0..<cm).contains(c) && !visited[r][c] {
                if arr[r][c] == 0 {
                    visited[r][c] = true
                    queue.append((r,c))
                } else if arr[r][c] == 1 {
                    visited[r][c] = true
                    cheese += 1
                    arr[r][c] = 0
                }
            }
        }
    }
    cheeseCount.append(cheese)
}

while remain > 0 {
    bfs()
    remain -= cheeseCount.last!
}

print(cheeseCount.count)
print(cheeseCount.last!)
