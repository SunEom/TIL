// 11728 배열 합치기

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let arr1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let arr2 = readLine()!.split(separator: " ").map { Int(String($0))! }
var newArr = [Int]()

var i = 0, j = 0

while i < arr1.count && j < arr2.count {
    if arr1[i] < arr2[j] {
        newArr.append(arr1[i])
        i += 1
    } else if arr1[i] > arr2[j] {
        newArr.append(arr2[j])
        j += 1
    } else {
        newArr.append(arr1[i])
        i += 1
        newArr.append(arr2[j])
        j += 1
    }
}

while i < arr1.count {
    newArr.append(arr1[i])
    i += 1
}

while j < arr2.count {
    newArr.append(arr2[j])
    j += 1
}

print(newArr.map { String($0) }.joined(separator: " "))
