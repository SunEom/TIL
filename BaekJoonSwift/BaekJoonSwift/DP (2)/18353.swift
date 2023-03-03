// 18353 병사 배치하기

import Foundation

let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
var dp = [Int]()

func binarySearch(_ target: Int) -> Int {
    var s = 0
    var e = dp.count-1
    
    while s <= e {
        let m = (s+e)/2
        if dp[m] == target {
            return m
        } else if dp[m] < target {
            s = m+1
        } else {
            e = m-1
        }
    }
    
    return s
}

dp.append(arr.last!)
for i in stride(from: N-1, to: -1, by: -1) {
    if dp.last! < arr[i] {
        dp.append(arr[i])
    } else {
        dp[binarySearch(arr[i])] = arr[i]
    }
}
print(N - dp.count)
