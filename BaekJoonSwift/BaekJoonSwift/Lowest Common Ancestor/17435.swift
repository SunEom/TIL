// 합성함수와 쿼리

import Foundation

let N = Int(readLine()!)!
let f = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }

let T = Int(readLine()!)!
var dp = [[Int](), f]
var result = ""

for _ in 0..<20 {
    var temp = [0]
    var lastDp = dp.last!
    for t in lastDp[1...] {
        temp.append(lastDp[t])
    }
    dp.append(temp)
}

for _ in 0..<T {
    let cmd = readLine()!.split(separator: " ").map { Int(String($0))! }
    var q = cmd[0]
    var x = cmd[1]
    
    while q > 0 {
        var i = 1
        var t = 1
        
        while t*2 <= q {
            t *= 2
            i += 1
        }
        
        x = dp[i][x]
        q -= t
    }
    
    result += "\(x)\n"
    
}

print(result)


////  Time Over
//import Foundation
//
//let N = Int(readLine()!)!
//let f = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
//
//let T = Int(readLine()!)!
//var result = ""
//
//for _ in 0..<T {
//    let cmd = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//    var x = cmd[1]
//    for _ in 0..<cmd[0] {
//        x = f[x]
//    }
//
//    result += "\(x)\n"
//}
//
//print(result)

