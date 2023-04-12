// 10810 공 넣기

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var arr = Array(repeating: 0, count: input[0])

for _ in 0..<input[1] {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    for i in temp[0]-1..<temp[1] {
        arr[i] = temp[2]
    }
}

print(arr.map{String($0)}.joined(separator: " "))
