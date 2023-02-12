// 6159 코스튬 파티

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0],  S = input[1]
var arr = [Int]()
var l = 0, r = 1
var result = 0

for _ in 0..<N{
    arr.append(Int(readLine()!)!)
}

arr.sort()

while l < r && r < N {
    let temp = arr[l] + arr[r]
    
    if temp <= S {
        result += 1
        r += 1
        
        if r == N {
            l += 1
            r = l+1
        }
    } else {
        l += 1
        r = l+1
    }
}

print(result)
