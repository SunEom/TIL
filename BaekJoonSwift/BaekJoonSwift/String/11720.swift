import Foundation

let len = Int(readLine()!)!
let str = readLine()!
var numbers = Array(str)
var result = 0
let c = UnicodeScalar("0").value

for num in numbers {
    result += Int(UnicodeScalar(String(num))!.value) - 48
}

print(result)
