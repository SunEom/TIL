import Foundation

let n = Int(readLine()!)!
var result = [Int]()
var str = ""
for _ in 0...10000 {
    result.append(0)
}

for _ in 0..<n {
    let temp = Int(readLine()!)!
    result[temp] += 1
}

for i in 1...10000 {
    for _ in 0..<result[i] {
        str += "\(i)\n"
    }
}

print(str)
