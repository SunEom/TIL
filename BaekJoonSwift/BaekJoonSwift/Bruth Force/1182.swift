// 1182 부분수열의 합

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = 0

func solve(_ idx: Int, _ sum: Int) {
    var tsum = sum
    tsum += arr[idx]
    
    if tsum == input[1] {
        result += 1
    }
    
    for i in (idx+1)..<arr.count {
        solve(i, tsum)
    }
    
}

for i in 0..<arr.count {
    solve(i, 0)
}

print(result)
