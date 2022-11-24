// 부분합

import Foundation

let input1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input1[0]
let S = input1[1]

let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

var s = 0, e = 0
var q = [Int]()
var sum = 0
var result = -1

while e < N {
    q.append(arr[e])
    sum += arr[e]
    e += 1
    
    if sum >= S {
        
        while sum - q.first! >= S {
            sum -= q.first!
            q.removeFirst()
            s += 1
        }
        
        
        if q.count < result || result == -1 {
            result = q.count
        }
        
        s += 1
        sum -= q.first!
        q.removeFirst()
        
    }
}

print(result != -1 ? result: 0)
