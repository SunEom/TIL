// 9663

import Foundation

let n = Int(readLine()!)!

var result = 0

func bt(_ aCol: [Int], _ depth: Int) {
    
    if depth == n {
        result += 1
        return 
    }
    
    for i in 0..<n {
        if !aCol.contains(i) {
            var isAvailable = true
            for k in 0..<aCol.count {
                if isDiagonal(arr1: [depth, i], arr2: [k, aCol[k]]) {
                    isAvailable = false
                    break
                }
            }
            if isAvailable {
                bt(aCol+[i], depth+1)
            }
        }
    }
}

func isDiagonal(arr1: [Int], arr2: [Int]) -> Bool {
    return abs(arr1[0]-arr2[0]) == abs(arr1[1]-arr2[1])
}

bt([], 0)

print(result)
