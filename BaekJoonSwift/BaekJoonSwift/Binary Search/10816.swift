import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }
let numOfTarget = Int(readLine()!)!
let targets = readLine()!.split(separator: " ").map { Int($0)! }
var result = ""
var dict = [Int: Int]()

for num in arr {
    if dict.keys.contains(num) {
        dict[num]! += 1
    }
    else {
        dict[num] = 1
    }
}

for t in targets {
    if dict.keys.contains(t) {
        result += "\(dict[t]!) "
    } else {
        result += "0 "
    }
}

print(result)
