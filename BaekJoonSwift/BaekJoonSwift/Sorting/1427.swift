import Foundation

var str = String(readLine()!)
var arr = Array(str)
var sorted = arr.map { Int(String($0))! }.sorted { $0 > $1 }
var result = ""
for num in sorted {
    result += "\(num)"
}

print(result)
