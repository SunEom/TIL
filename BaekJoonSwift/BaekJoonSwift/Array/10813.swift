// 10813   공 바꾸기

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var arr = Array(1...input[0])

for _ in 0..<input[1] {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    arr.swapAt(temp[0]-1, temp[1]-1)
}

print(arr.map { String($0)}.joined(separator: " "))
