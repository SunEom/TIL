// 2003 수들의 합 2

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
let M = input[1]
var p1 = 0, p2 = 0
var sum = arr[0]
var result = 0

while p1 <= p2 && p2 < arr.count {
    if sum == M {
        result += 1
        p1 += 1
        p2 = p1
        if p2 >= arr.count {
            break
        }
        sum = arr[p1]
    } else if sum < M {
        p2 += 1
        if p2 >= arr.count {
            break
        }
        sum += arr[p2]
    } else  {
        p1 += 1
        p2 = p1
        if p2 >= arr.count {
            break
        }
        sum = arr[p1]
    }
}

print(result)
