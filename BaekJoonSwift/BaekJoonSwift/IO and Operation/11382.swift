// 11382 꼬마 정민

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

print(input.reduce(0) { $0 + $1 })
