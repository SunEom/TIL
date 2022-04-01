import Foundation

var p = [1,1,1,2,2,3,4,5,7,9]

let n = Int(readLine()!)!
var i = 9
for _ in 0..<n {
    let num = Int(readLine()!)!
    
    while p.count < num {
        p.append(p[i] + p[i-4])
        i += 1
    }
    
    print(p[num-1])
}
