import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var dequeue = Array(1...input[0])
var target = readLine()!.split(separator: " ").map { Int($0)! }
