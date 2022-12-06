// 9625 BABBA

import Foundation

var a = [1, 0, 1, 1, 2]
var b = [0, 1, 1, 2, 3]

let n = Int(readLine()!)!

while a.count < n + 1 {
    let t = a.last!
    a.append(b.last!)
    b.append(t+b.last!)
}

print(a[n], b[n])
