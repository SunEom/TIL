// 문자열 폭발

import Foundation

let str = Array(readLine()!.map { String($0)} )
var target = Array(readLine()!.map{String($0)} )
var stack = [String]()

for c in str {
    stack.append(c)
    
    if stack.count >= target.count {
        var check = true
        for i in 1...target.count {
            if target[target.count - i] != stack[stack.count - i] {
                check = false
                break
            }
        }
        
        if check {
            for _ in 1...target.count {
                _ = stack.removeLast()
            }
        }
    }
}

let result = stack.joined(separator: "")
print(result == "" ? "FRULA" : result)
