// 두 수의 합

import Foundation

let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
let X = Int(readLine()!)!
var start = 0
var end = arr.count-1
var result = 0

arr.sort()

while start < end {
    if arr[start] + arr[end] < X {
        start += 1
    } else if arr[start] + arr[end] > X {
        end -= 1
    } else {
        start += 1
        end -= 1
        result += 1
    }
}

print(result)
