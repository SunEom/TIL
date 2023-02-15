// 2167 2차원 배열의 합

import Foundation

let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
let M = NM[1]
var result = ""
var arr = [[Int]]()

for _ in 0..<N {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int(String($0))!-1 }
    var sum = 0
    for i in input[0]...input[2] {
        for j in input[1]...input[3] {
            sum += arr[i][j]
        }
    }
    result += "\(sum)\n"
}

print(result)
