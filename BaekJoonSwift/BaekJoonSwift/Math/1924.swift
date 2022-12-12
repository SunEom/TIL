//1924 2007년

import Foundation

let days = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let weekday = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"]
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let x = input[0]
let y = input[1]
var resultIdx = 0

for i in 1..<x {
    resultIdx += days[i]
}

resultIdx += y - 1

print(weekday[resultIdx%7])
