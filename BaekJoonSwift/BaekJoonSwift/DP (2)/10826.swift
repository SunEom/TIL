// 10826 피보나치 수 4

import Foundation
var dp = [[0], [1]]
let n = Int(readLine()!)!

while dp.count < n+1 {
    let l = dp[dp.count-2]
    let r = dp[dp.count-1]
    var c = 0
    var temp = [Int]()
    
    zip(l, r).forEach {
        temp.append(($0.0+$0.1+c)%10)
        c = ($0.0+$0.1+c)/10
    }
    
    for i in l.count..<r.count {
        temp.append((r[i]+c)%10)
        c = (r[i]+c)/10
    }
    
    if c != 0 { temp.append(c) }
    
    dp.append(temp)
}
print(dp[n].map{String($0)}.reversed().joined())
