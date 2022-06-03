import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
var result = 0

var dict = [String: Bool]()

for _ in 0..<N {
    dict[readLine()!] = true
}

for _ in 0..<M {
    if dict[readLine()!] == true {
        result += 1
    }
}

print(result)
