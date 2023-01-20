// 1026   보물

import Foundation

let N = Int(readLine()!)!
var arr1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
var arr2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
var result = 0

arr1.sort(by: <)
arr2.sort(by: >)

zip(arr1, arr2).forEach { (a,b) in
    result += a*b
}
print(result)
