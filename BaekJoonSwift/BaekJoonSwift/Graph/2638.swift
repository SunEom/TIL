// 2638 치즈

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let R = input[0]
let C = input[1]
var arr = [[Int]]()

for _ in 0..<R {
    arr.append(readLine()!.split(separator: " ").map{ Int(String($0))! })
}

func solve() {
    var stack = [(0, 0)]
    var visited = Array(repeating: Array(repeating: -1, count: C), count: R)
    let direction = [(1,0), (0,1), (-1, 0), (0,-1)]
    visited[0][0] = 0
    
    while stack.count > 0 {
        let t = stack.removeLast()
        
        for d in direction {
            let r = t.0+d.0
            let c = t.1+d.1
            
            if (0..<R).contains(r) && (0..<C).contains(c) && visited[r][c] != 1 {
                if arr[r][c] == 0 {
                    stack.append((r,c))
                    visited[r][c] = 1
                } else if arr[r][c] == 1 {
                    if visited[r][c] == -1 {
                        visited[r][c] = 0
                    } else {
                        visited[r][c] = 1
                        arr[r][c] = 0
                    }
                }
            }
        }
    }
}

var result = 0
for r in 0..<R {
    for c in 0..<C {
        if arr[r][c] == 1 {
            solve()
            result += 1
        }
    }
}

print(result)


