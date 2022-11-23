// 두 용액

import Foundation

let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }

var minValue = Int.max
var s = 0
var e = N-1
var result: (Int, Int) = (-1, -1)

arr.sort()

while s < e {
    let value = arr[s] + arr[e]
    
    if abs(value) < minValue {
        result = (arr[s], arr[e])
        minValue = abs(value)
    }
    
    if value > 0 {
        e -= 1
    } else if value < 0 {
        s += 1
    } else {
        break
    }
    
}

print(result.0, result.1)
