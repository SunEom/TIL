// 1303 전쟁 - 전투

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var arr = [[String]]()
let r = input[1]
let c = input[0]
var wValue = 0
var bValue = 0

var visited = Array(repeating: Array(repeating: false, count: c), count: r)

for _ in 0..<r {
    arr.append(Array(readLine()!).map{ String($0) })
}

for i in 0..<r {
    for j in 0..<c {
        if !visited[i][j] {
            solve(i,j)
        }
    }
}

func solve(_ i: Int, _ j: Int) {
    let direction = [(1,0),(0,1),(-1,0),(0,-1)]
    var queue = [(i,j)]
    var cnt = 1
    var char = arr[i][j]
    visited[i][j] = true
    
    while !queue.isEmpty {
        let t = queue.removeFirst()
        
        for d in direction {
            let tr = t.0 + d.0
            let tc = t.1 + d.1
            
            if (0..<r).contains(tr) && (0..<c).contains(tc) && !visited[tr][tc] && arr[tr][tc] == char {
                queue.append((tr,tc))
                visited[tr][tc] = true
                cnt += 1
            }
        }
    }
    
    if char == "W" {
        wValue += cnt*cnt
    } else {
        bValue += cnt*cnt
    }
    
}

print("\(wValue) \(bValue)")
