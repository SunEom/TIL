// 검문

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    let large = max(a,b)
    let small = min(a,b)
    if small == 0 {
        return large
    }
    return gcd(small, large%small)
}

let N = Int(readLine()!)!
var arr = [Int]()
var diff = [Int]()
var result = ""

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

for i in 1..<N {
    diff.append(abs(arr[i] - arr[i-1]))
}


var gcdValue = diff[0]

if diff.count >= 2 {
    gcdValue = gcd(diff[0], diff[1])

    for i in 2..<diff.count {
        gcdValue = gcd(gcdValue, diff[i])
    }
}

var answerList = [Int]()

for i in 2...Int(sqrt(Double(gcdValue)) + 1) {
    if gcdValue % i == 0 {
        answerList.append(i)
        answerList.append(gcdValue/i)
    }
}

answerList.append(gcdValue)

print(Array(Set(answerList)).sorted().map { String($0) }.joined(separator: " "))
