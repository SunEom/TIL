import Foundation

var arr = [[String]]()
let n = Int(readLine()!)!
var result = ""

for i in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { String($0) })
    arr[i].append("\(i)")
}

var sortedArr = arr.sorted {
    let age1 = Int($0[0])!
    let age2 = Int($1[0])!
    
    return age1 != age2 ? age1 < age2 : Int($0[2])! < Int($1[2])!
}

for r in sortedArr {
    result += "\(r[0]) \(r[1])\n"
}

print(result)
