import Foundation

let time = readLine()!.split(separator: " ").map { Int($0)! }
var hour = time[0]
var minute = time[1]

let duration = Int(readLine()!)!

minute += duration

if minute >= 60 {
    hour += minute / 60
    minute %= 60
    hour %= 24
}

print("\(hour) \(minute)")
