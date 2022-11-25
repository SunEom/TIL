// 소수의 연속합

import Foundation

func getPrimeList(_ num: Int) -> [Int] {
    var arr = Array(repeating: true, count: num+1)
    var primeList = [Int]()
    if num == 1 { return [] }
    
    for i in 2...num {
        if arr[i] { primeList.append(i) }
        for j in stride(from: i, to: num+1, by: i) {
            arr[j] = false
        }
    }
    return primeList
}

let N = Int(readLine()!)!
var arr = getPrimeList(N)
var s = 0, e = 0
var result = 0
var sum = 0
var q = [Int]()

while true {
    if sum < N {
        if e >= arr.count {
            break
        }
        sum += arr[e]
        q.append(arr[e])
        e += 1
    } else {
        
        while sum > N {
            sum -= q.first!
            q.removeFirst()
            s += 1
        }
        
        if sum == N {
            result += 1
        }
        
        sum -= q.first!
        q.removeFirst()
        s += 1
    }
}

print(result)
