// 2631 줄 세우기

import Foundation

func binarySearch(_ target: Int, _ arr: [Int]) -> Int {
    var left = 0
    var right = arr.count-1
    var mid = (left+right)/2
    
    while left <= right {
        mid = (left+right)/2
        if arr[mid] == target {
            return mid
        } else if arr[mid] < target {
            left = mid+1
        } else {
            right = mid-1
        }
    }
    
    return left
}

let N = Int(readLine()!)!

var arr = [Int]()
for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

var dp = [arr[0]]

for i in 1..<arr.count {
    if arr[i] > dp.last! {
        dp.append(arr[i])
    } else {
        dp[binarySearch(arr[i], dp)] = arr[i]
    }
}

print(N - dp.count)


