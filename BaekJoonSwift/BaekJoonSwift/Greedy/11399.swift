import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0

arr.sort()

for i in 0..<n {
    result += arr[i]*(n-i)
}

print(result)
