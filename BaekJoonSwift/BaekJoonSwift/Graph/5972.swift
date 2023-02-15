// 5972 택배 배송

import Foundation

let INF = 999999
let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
let M = NM[1]

var adjMat = Array(repeating: Array(repeating: INF, count: N+1), count: N+1)

for _ in 0..<M {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    adjMat[temp[0]][temp[1]] = temp[2]
    adjMat[temp[1]][temp[0]] = temp[2]
}

for k in 1...N {
    for i in 1...N {
        for j in 1...N {
            adjMat[i][j] = min(adjMat[i][j], adjMat[i][k] + adjMat[k][j])
        }
    }
}

print(adjMat[1][N])


