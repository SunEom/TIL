// 10811 바구니 뒤집기

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var arr = Array(1...input[0])

for _ in 0..<input[1] {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    let reverseArr = Array(arr[temp[0]-1..<temp[1]].reversed())
    
    for i in 0..<reverseArr.count {
        arr[temp[0]-1+i] = reverseArr[i]
    }
}

print(arr.map{String($0)}.joined(separator: " "))
