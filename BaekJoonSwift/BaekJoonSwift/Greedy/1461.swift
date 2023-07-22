// 1461 도서관

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

var pos = [Int]()
var neg = [Int]()

var result = 0

for n in arr {
    if n > 0 {
        pos.append(n)
    } else if n < 0 {
        neg.append(n*(-1))
    }
}

pos.sort(by: >)
neg.sort(by: >)

for i in stride(from: 0, to: pos.count, by: input[1]) {
    result += pos[i] * 2
}

for i in stride(from: 0, to: neg.count, by: input[1]) {
    result += neg[i] * 2
}

print(result - arr.map { Int(abs($0)) }.max()!)
