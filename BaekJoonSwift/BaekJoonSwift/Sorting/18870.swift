import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }
var dict = [Int: Int]()
var temp = 0
var result = ""

for i in arr.sorted() {
    if dict[i] == nil {
        dict[i] = temp
        temp += 1
    }
}

arr.forEach {
    result += "\(dict[$0]!) "
}

print(result)

