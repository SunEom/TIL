// 12738 가장 긴 증가하는 부분 수열 3

import Foundation

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var LIS = [1]
var x = [arr[0]]

func binarySearch(_ num : Int) -> Int {
    var left = 0
    var right = x.count-1
    
    while left < right {
        let m = (left+right)/2
        
        if num > x[m] {
            left = m + 1
        } else {
            right = m
        }
    }
    
    return left
}

for i in 1..<arr.count {
    if arr[i] > x.last! {
        LIS.append(LIS.last! + 1)
        x.append(arr[i])
    } else {
        let idx = binarySearch(arr[i])
        x[idx] = arr[i]
    }
}

print(LIS.last!)


