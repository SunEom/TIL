import Foundation

let n = Int(readLine()!)!
let i1 = readLine()!.split(separator: " ").map { Int($0)! }
let i2 = readLine()!.split(separator: " ").map { Int($0)! }

var minCost = i2[0]
var len = i1[0]
var result = 0

for i in 1..<i2.count-1 {
    if i2[i] < minCost {
        result += len * minCost
        minCost = i2[i]
        len = i1[i]
    }
    else {
        len += i1[i]
    }
}
result += len * minCost

print(result)
