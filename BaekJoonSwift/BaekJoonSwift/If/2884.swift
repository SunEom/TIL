import Foundation

let data = readLine()!.split(separator: " ").map { Int($0)! }
var hour = data[0]
var minute = data[1]

minute -= 45
if minute < 0 {
    minute += 60
    hour -= 1
    hour += 24
    hour %= 24
}

print("\(hour) \(minute)")
