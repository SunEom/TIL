import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = Array(1...input[0])
var result = "<"
var i = input[1]-1
result += "\(arr[i])"
while !arr.isEmpty {
    arr.remove(at: i)
    if arr.isEmpty {
        break
    }
    i += input[1]-1
    i %= arr.count
    result += ", \(arr[i])"
}
result += ">"
print(result)
