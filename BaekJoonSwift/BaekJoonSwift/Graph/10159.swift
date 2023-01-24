// 10159 저울

import Foundation

let INF = 20000
let V = Int(readLine()!)!
let E = Int(readLine()!)!
var result = ""

var distance = Array(repeating: Array(repeating: false, count: V+1), count: V+1)

for _ in 0..<E {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    distance[input[0]][input[1]] = true
    
}

for k in 1...V {
    for r in 1...V {
        for c in 1...V {
            if distance[r][k] && distance[k][c] {
                distance[r][c] = true
            }
        }
    }
}

for i in 1...V {
    var cnt = 0
    for j in 1...V {
        if !distance[i][j] && !distance[j][i] {
            cnt += 1
        }
    }
    result += "\(cnt-1)\n"
}

print(result)


