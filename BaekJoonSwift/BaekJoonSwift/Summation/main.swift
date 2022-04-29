import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = [[Int]]()

for _ in 0..<input[0] {
    arr.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var summation = arr


