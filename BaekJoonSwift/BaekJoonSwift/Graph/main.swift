// 14938 서강그라운드

import Foundation

let INF = 9999999
let nmr = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nmr[0]
let m = nmr[1]
let r = nmr[2]
var result = 0

let items = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
var adjMat = Array(repeating: Array(repeating: INF, count: n+1), count: n+1)

for i in 1...n {
    adjMat[i][i] = 0
}

for _ in 0..<r {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    adjMat[temp[0]][temp[1]] = temp[2]
    adjMat[temp[1]][temp[0]] = temp[2]
}


for k in 1...n {
    for i in 1...n {
        for j in 1...n {
            adjMat[i][j] = min(adjMat[i][j], adjMat[i][k] + adjMat[j][k])
        }
    }
}

for i in 1...n {
    var t = 0
    for j in 1...n {
        if adjMat[i][j] <= m {
            t += items[j]
        }
    }
    result = max(result, t)
}

print(result)
