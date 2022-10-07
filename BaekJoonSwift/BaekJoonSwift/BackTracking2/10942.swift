//입출력에 의한 시간초과

import Foundation

var memo = Array(repeating: Array(repeating: -1, count: 2001 ), count: 2001)
var res = ""

func solution() {
    
    let _ = Int(readLine()!)!
    
    let arr = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
    
    let M = Int(readLine()!)!
    
    for _ in 0..<M {
        let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
        res += "\(isPalin(start: temp[0], end: temp[1], arr: arr))\n"
    }
 
    print(res)
}

func isPalin (start: Int, end: Int, arr: [Int]) -> Int {
    if start >= end {
        memo[start][end] = 1
        return 1
    } else {
        var temp: Int!
        
        if memo[start][end] != -1 {
            temp = memo[start+1][end-1]
        } else {
            temp = isPalin(start: start+1, end: end-1, arr: arr)
        }
        let result = temp == 1 && arr[start] == arr[end] ? 1 : 0
        
        memo[start][end] = result
        
        return result
    }
}



solution()
