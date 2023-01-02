// 18111 마인크래프트

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]
let B = input[2]

var minHeight = Int.max
var maxHeight = Int.min


var resultTime = Int.max
var resultHeight = 0
var arr = [[Int]]()

for _ in 0..<N {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    maxHeight = max(maxHeight, temp.max()!)
    minHeight = min(minHeight, temp.min()!)
    arr.append(temp)
}


for h in minHeight...maxHeight {
    var b = B
    var time = 0
    for r in 0..<N {
        for c in 0..<M {
            let diff = arr[r][c] - h
            if diff > 0 {
                time += 2*diff
                b += diff
            } else if diff < 0 {
                time -= diff
                b += diff
            }
        }
    }
    
    if b >= 0 && resultTime >= time {
        resultTime = time
        resultHeight = h
    }
    
}

print(resultTime, resultHeight)
