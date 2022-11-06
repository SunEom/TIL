// 대표값2

import Foundation

var arr = [Int]()
var sum = 0

for _ in 0..<5 {
    let input = Int(readLine()!)!
    sum += input
    arr.append(input)
}

print(sum/5)

arr.sort()
print(arr[2])
