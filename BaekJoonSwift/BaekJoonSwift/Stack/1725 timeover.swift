//TimeOver


import Foundation

let N = Int(readLine()!)!
var stack = Array(repeating: 0, count: N)
var minHeight = [Int]()
var result = 0

for i in 0..<N {
    stack[i] = Int(readLine()!)!
    minHeight.append(stack[i])
    
    for j in 0..<i {
        
        let twidth = i-j+1
        minHeight[j] = min(minHeight[j], stack[i])
        let theight = minHeight[j]
        let tarea = twidth*theight
        
        if stack[j] < tarea {
            stack[j] = tarea
        }
    }
}

print(stack.max()!)
