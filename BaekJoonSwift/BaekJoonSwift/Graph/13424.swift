// 13424 비밀 모임

import Foundation

let INF = 999999
let T = Int(readLine()!)!
var result = ""

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    var adjMat = Array(repeating: Array(repeating: INF, count: input[0]+1), count: input[0]+1)
    
    for _ in 0..<input[1] {
        let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
        adjMat[temp[0]][temp[1]] = temp[2]
        adjMat[temp[1]][temp[0]] = temp[2]
    }
    
    for i in 0...input[0] {
        adjMat[i][i] = 0
    }
    
    for k in 1...input[0] {
        for i in 1...input[0] {
            for j in 1...input[0] {
                adjMat[i][j] = min(adjMat[i][j], adjMat[i][k] + adjMat[k][j])
            }
        }
    }
    
    let k = Int(readLine()!)!
    let friends = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    var minIdx = 1
    var minValue = INF
    
    for i in 1...input[0] {
        var t = 0
        for friend in friends {
            t += adjMat[i][friend]
        }
        
        if minValue > t {
            minValue = t
            minIdx = i
        }
    }
    
    result += "\(minIdx)\n"
}

print(result)
