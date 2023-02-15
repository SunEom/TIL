// 2851 슈퍼 마리오

import Foundation

var arr = [Int]()
var diff = 100
var sum = 0

for _ in 0..<10 {
    arr.append(Int(readLine()!)!)
}

for a in arr {
    if abs(100 - (sum+a)) <= diff {
        diff = abs(100 - (sum+a))
        sum += a
    } else if sum + a > 100 {
        break
    }
}

print(sum)
