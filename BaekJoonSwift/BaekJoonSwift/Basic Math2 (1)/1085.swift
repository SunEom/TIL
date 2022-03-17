import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

print(min(abs(input[0]-input[2]), abs(input[1] - input[3]), abs(input[0]), abs(input[1])))
