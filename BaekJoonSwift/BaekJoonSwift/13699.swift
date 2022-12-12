//13699 점화식

import Foundation

let n = Int(readLine()!)!
var t = [Int]()
t.append(1)

while t.count < n+1 {
    var temp = 0
    
    for i in 0..<t.count {
        temp += t[i]*t[t.count-1-i]
    }
    
    t.append(temp)
}

print(t[n])
