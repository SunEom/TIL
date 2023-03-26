// 9086 문자열

import Foundation

let t = Int(readLine()!)!
var result = ""

for _ in 0..<t {
    let input = Array(readLine()!)
    result += "\(input.first!)\(input.last!)\n"
}

print(result)
