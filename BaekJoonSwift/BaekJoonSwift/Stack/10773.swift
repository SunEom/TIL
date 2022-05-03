import Foundation

let n = Int(readLine()!)!
var result = 0
var stack = [Int]()

for _ in 0..<n {
    let temp = Int(readLine()!)!
    if temp == 0 {
        result -= stack.removeLast()
    }
    else {
        stack.append(temp)
        result += temp
    }
}
print(result)
