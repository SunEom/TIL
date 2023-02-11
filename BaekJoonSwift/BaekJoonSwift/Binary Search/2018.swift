// 2018 수들의 합 5

import Foundation

let N = Int(readLine()!)!
var l = 1, r = 1
var result = 0
var sum = 1

while l<=r && r <= N {
    if sum == N {
        result += 1
        l += 1
        r = l
        sum = r
    } else if sum < N {
        r += 1
        sum += r
    } else {
        sum -= l
        l += 1
    }
}

print(result)
