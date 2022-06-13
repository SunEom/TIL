import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

var arr1 = [[Int]]()
var arr2 = [[Int]]()
var result = ""


for _ in 0..<input[0] {
    arr1.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let input2 = readLine()!.split(separator: " ").map { Int($0)! }

for _ in 0..<input2[0] {
    arr2.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for i in 0..<input[0] {
    for j in 0..<input2[1] {
        var t = 0
        for k in 0..<input[1] {
            t += arr1[i][k] * arr2[k][j]
        }
        result += "\(t) "
    }
    result += "\n"
}

print(result)

