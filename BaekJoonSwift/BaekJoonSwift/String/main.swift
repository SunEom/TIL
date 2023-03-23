// 2444 별 찍기 - 7

import Foundation

let n = Int(readLine()!)!
var t = [String]()
for i in stride(from: n-1, through: 0, by: -1) {
    var temp = ""
    for _ in 0..<i {
        temp += " "
    }
    
    for _ in 0..<(2*(n-i)-1) {
        temp += "*"
    }
    temp += "\n"
    t.append(temp)
}

var result = ""

for s in t {
    result += s
}

for s in t.reversed()[1...]{
    result += s
}

print(result)
