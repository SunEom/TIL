// 가장 긴 증가하는 부분 수열 5

import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var LIS = [Int]()
var index = Array(repeating: 0, count: n)

func binarySearch (_ target: Int, _ start: Int, _ end: Int) -> Int {
    var left = start, right = end
    while left < right {
        let mid = (left + right) / 2
        if target > LIS[mid] {
            left = mid + 1
        } else {
            right = mid
        }
    }
    return left
}

LIS.append(arr[0])
index[0] = 0

for i in 1..<arr.count {
    if arr[i] > LIS.last! {
        LIS.append(arr[i])
        index[i] = LIS.count - 1
    } else {
        let t = binarySearch(arr[i], 0, LIS.count-1)
        LIS[t] = arr[i]
        index[i] = t
    }
}

var answer = [Int]()
var targetIndex = LIS.count - 1
for i in stride(from: n-1, to: -1, by: -1) {
    if targetIndex == index[i] {
        answer.append(arr[i])
        targetIndex -= 1
    }
}

print(LIS.count)
print(answer.reversed().map { String($0) }.joined(separator: " "))
