import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!
var distance = Array(repeating: Array(repeating: 9900001, count: n+1), count: n+1)
var result = ""

for i in 0...n {
    distance[i][i] = 0
}


for _ in 0..<m {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    distance[temp[0]][temp[1]] = min(distance[temp[0]][temp[1]] ,temp[2])
}

for k in 1...n {
    for i in 1...n {
        for j in 1...n {
            distance[i][j] = min(distance[i][j], distance[i][k] + distance[k][j])
        }
    }
}

for i in 1...n {
    for j in 1...n{
        if distance[i][j] != 9900001 {
            result += "\(distance[i][j]) "
        } else {
            result += "0 "
        }
        
    }
    result += "\n"
}
print(result)
