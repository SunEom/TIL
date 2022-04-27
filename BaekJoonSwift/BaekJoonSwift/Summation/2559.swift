import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let arr = readLine()!.split(separator: " ").map { Int($0)! }

var result = [Int]()
var prev = 0

for i in 0..<input[1] {
    prev += arr[i]
}

result.append(prev)

for i in input[1]..<input[0] {
    prev -= arr[i-input[1]]
    prev += arr[i]
    result.append(prev)
}

print(result.max()!)
