import Foundation

var arr = readLine()!.split(separator: " ").map { Int(String($0.reversed()))! }
print(arr.max()!)
