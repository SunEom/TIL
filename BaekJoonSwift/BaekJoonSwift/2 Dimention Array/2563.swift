// 색종이

import Foundation

var rect = [[(x: Int, y: Int)]]()
let N = Int(readLine()!)!
var result = Array(repeating: Array(repeating: 0, count: 100), count: 100)

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let temp = [(input[0], input[1]), (input[0]+10, input[1]+10)]
    rect.append(temp)
}

var count = 0

for t in rect {
    for r in t[0].x..<t[1].x {
        for c in t[0].y..<t[1].y {
            if result[r][c] == 0 {
                count += 1
                result[r][c] = 1
            }
        }
    }
}


print(count)
