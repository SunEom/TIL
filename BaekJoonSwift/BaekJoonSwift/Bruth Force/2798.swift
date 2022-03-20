import Foundation

let iValue = readLine()!.split(separator: " ").map { Int($0)! }
let len = iValue[0]
let goal = iValue[1]
var max = -1
let numbers = readLine()!.split(separator: " ").map { Int($0)! }

for i in 0..<len-2 {
    for j in i+1..<len-1 {
        for k in j+1..<len {
            let temp = numbers[i] + numbers[j] + numbers[k]
            if temp <= goal && temp > max {
                max = temp
            }
        }
    }
}
print(max)
