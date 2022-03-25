import Foundation

let n = Int(readLine()!)!
var points = [[Int]]()
var result = ""
for _ in 0..<n {
    var temp = readLine()!.split(separator: " ").map { Int($0)! }
    points.append(temp)
}

points.sort {
    if $0[0] != $1[0] {
        return $0[0] < $1[0]
    } else {
        return $0[1] < $1[1]
    }
}

for p in points {
    result += "\(p[0]) \(p[1])\n"
}

print(result)
