import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let number = readLine()!.split(separator: " ").map { Int(String($0))! }

print(number.sorted(by: >)[input[1]-1])
