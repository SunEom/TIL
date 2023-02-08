// 1940 주몽

import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var p1 = 0, p2 = arr.count-1
var count = 0

while p1 < p2 {
    let temp = arr[p1] + arr[p2]
    if temp == M {
        p1 += 1
        count += 1
    } else if temp < M {
        p1 += 1
    } else  {
        p2 -= 1
    }
}

print(count)
