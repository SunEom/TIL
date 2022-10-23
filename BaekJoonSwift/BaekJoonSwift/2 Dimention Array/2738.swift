// 행렬 덧셈

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var arr1 = [[Int]]()
var arr2 = [[Int]]()

for _ in 0..<input[0] {
    arr1.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

for _ in 0..<input[0] {
    arr2.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}


var result = ""
for i in 0..<input[0] {
    for j in 0..<input[1] {
        result += "\(arr1[i][j] + arr2[i][j]) "
    }
    result += "\n"
}

print(result)
