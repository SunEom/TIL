import Foundation

let length = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }
var maxNum = arr.max()!

let sum = arr.reduce(0){ $0+$1 }
var avg = Double(sum)/Double(length)


print(avg/Double(maxNum)*100)
