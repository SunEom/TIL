import Foundation

var values = Array(readLine()!.split(separator: " "))
var v1 = Array(values[0]).map { Int(String($0))! }
var v2 = Array(values[1]).map { Int(String($0))! }

var carry = 0
var result = [Int]()
var aIndex = v1.count - 1
var bIndex = v2.count - 1

while aIndex >= 0 && bIndex >= 0 {
    let temp = v1[aIndex] + v2[bIndex] + carry
    result.append(temp%10)
    carry = temp / 10
    aIndex -= 1
    bIndex -= 1
}

while aIndex >= 0 {
    let temp = v1[aIndex] + carry
    result.append(temp%10)
    carry = temp / 10
    aIndex -= 1
}

while bIndex >= 0 {
    let temp = v2[bIndex] + carry
    result.append(temp%10)
    carry = temp / 10
    aIndex -= 1
}

if carry != 0 {
    result.append(carry)
}

print(result.reversed().map{ String($0) }.joined(separator: ""))
