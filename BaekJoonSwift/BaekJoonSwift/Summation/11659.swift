import Foundation

let i1 = readLine()!.split(separator: " ").map { Int($0)! }
let i2 = readLine()!.split(separator: " ").map { Int($0)! }
var result = ""

var summation = [0] + i2

for i in 1..<summation.count {
    summation[i] += summation[i-1]
}

for _ in 0..<i1[1] {
    let a = readLine()!.split(separator: " ").map { Int($0)! }
    result += "\(summation[a[1]] - summation[a[0]-1])\n"
}

print(result)
