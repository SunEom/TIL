// 개수 세기

import Foundation

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
let target = Int(readLine()!)!

var result = 0
for a in arr {
    if a == target {
        result += 1
    }
}

print(result)
