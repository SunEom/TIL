import Foundation

var result = ""
var dict = [Int: Bool]()

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }

for num in arr {
    dict[num] = true
}

let n2 = Int(readLine()!)!

let arr2 = readLine()!.split(separator: " ").map { Int($0)! }

for num in arr2 {
    if dict[num] == nil {
        result += "0 "
    } else {
        result += "1 "
    }
}

print(result)
