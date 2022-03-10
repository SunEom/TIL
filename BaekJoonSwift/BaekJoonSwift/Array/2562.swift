import Foundation

var arr = [Int]()
for _ in 0..<9 {
    arr.append(Int(readLine()!)!)
}

let maxNum = arr.max()!
print(maxNum)
print(arr.firstIndex{ $0 == maxNum }! + 1)
