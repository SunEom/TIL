import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }

var notFound = [Int]()

for i in 0..<n {
    while !notFound.isEmpty, arr[notFound.last!] < arr[i] {
        arr[notFound.popLast()!] = arr[i]
    }
    
    notFound.append(i)
}

for i in notFound {
    arr[i] = -1
}

print(arr.map{ String($0) }.joined(separator:" "))


