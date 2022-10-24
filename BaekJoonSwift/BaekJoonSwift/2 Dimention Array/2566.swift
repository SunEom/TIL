// 최댓값

import Foundation

var value = Int.min
var row = 0
var col = 0


for r in 0..<9 {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    for c in 0..<9 {
        if value < input[c] {
            value = input[c]
            row = r + 1
            col = c + 1
        }
    }
}

print(value)
print(row, col)
        
