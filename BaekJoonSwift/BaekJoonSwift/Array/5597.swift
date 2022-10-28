// 과제 안내신 분..?

import Foundation

var check = Array(repeating: false, count: 31)
var minValue = Int.max
var nextValue = Int.max

for _ in 0..<28 {
    check[Int(readLine()!)!] = true
}

for i in 1..<31 {
    if check[i] == false {
        minValue = nextValue
        nextValue = i
    }
}

print(minValue)
print(nextValue)
