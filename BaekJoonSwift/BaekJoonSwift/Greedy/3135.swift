// 3135 라디오

import Foundation


let ab = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = ab[0]
let b = ab[1]
let n = Int(readLine()!)!
var useFav = false
var minDiff = abs(b-a)
var target = a

for _ in 0..<n {
    let input = Int(readLine()!)!
    let diff = abs(b-input)
    if diff < minDiff {
        minDiff = diff
        target = input
        useFav = true
    }
}

if useFav {
    print(minDiff + 1)
} else {
    print(abs(b-a))
}
