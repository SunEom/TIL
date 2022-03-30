import Foundation

var min = Int.max
var max = Int.min

func bt(n: Int, num: Int, index: Int , numArr: [Int], operArr: [Int]) {
    if index == n {
        if num > max {
            max = num
        }
        if num < min {
            min = num
        }
    }
    
    for i in 0..<4 {
        if operArr[i] == 0 {
            continue
        }
        var temp = operArr
        var numTemp = num
        temp[i] -= 1
        if i == 0 {
            numTemp += numArr[index]
        } else if i == 1 {
            numTemp -= numArr[index]
        } else if i == 2 {
            numTemp *= numArr[index]
        } else {
            numTemp /= numArr[index]
        }
        bt(n: n, num: numTemp, index: index+1, numArr: numArr, operArr: temp)
    }
}

let n = Int(readLine()!)!
var numArr = readLine()!.split(separator: " ").map { Int($0)! }
var operArr = readLine()!.split(separator: " ").map { Int($0)! }

bt(n: n ,num: numArr[0], index: 1, numArr: numArr, operArr: operArr)

print(max)
print(min)


