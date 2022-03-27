import Foundation

var arr = Array<String>()
let n = Int(readLine()!)!
var result = ""

for _ in 0..<n {
    let temp = readLine()!
    arr.append(temp)
}

var sortedArr = Array(Set(arr)).sorted {
    $0.count != $1.count ? $0.count < $1.count : $0 < $1
}


print(sortedArr.joined(separator: "\n"))
