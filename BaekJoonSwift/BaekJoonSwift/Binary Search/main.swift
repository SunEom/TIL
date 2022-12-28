// 2143 두 배열의 합

import Foundation

let T = Int(readLine()!)!
let n = Int(readLine()!)!
let arr1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = Int(readLine()!)!
let arr2 = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = 0

var sum1 = [0] + arr1
var sum2 = [0] + arr2


for i in 1..<sum1.count {
    sum1[i] += sum1[i-1]
}

for i in 1..<sum2.count {
    sum2[i] += sum2[i-1]
}

for a in 1..<sum1.count {
    for b in 0..<a {
        let target = T-(sum1[a]-sum1[b])
        for i in 1..<sum2.count {
            for j in 0...i-1 {
                if target == sum2[i] - sum2[j] {
                    result += 1
                }
            }
        }
    }
}


print(result)
