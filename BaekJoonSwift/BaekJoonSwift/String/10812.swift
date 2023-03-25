// 10812 바구니 순서 바꾸기

import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var arr = Array(1...input[0])
for _ in 0..<input[1] {
    var temp = arr

    let command = readLine()!.split(separator: " ").map { Int(String($0))! }
    var idx = command[0]-1
    for i in command[2]-1...command[1]-1 {
        temp[idx] = arr[i]
        idx += 1
    }
    
    for i in command[0]-1..<command[2]-1 {
        temp[idx] = arr[i]
        idx += 1
    }
    arr = temp
}

print(arr.map { String($0) }.joined(separator: " "))
