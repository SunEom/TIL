import Foundation

let n = Int(readLine()!)!
var meetings = [[Int]]()
var end = -1
var result = 0
for _ in 0..<n {
    meetings.append(readLine()!.split(separator: " ").map { Int($0)! })
}

meetings.sort {
    if $0[1] != $1[1] {
        return $0[1] < $1[1]
    } else {
        return $0[0] < $1[0]
    }
}

for m in meetings {
    if m[0] >= end {
        end = m[1]
        result += 1
    }
}

print(result)
