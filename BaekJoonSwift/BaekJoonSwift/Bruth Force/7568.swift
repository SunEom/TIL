import Foundation

let n = Int(readLine()!)!
var v = [[Int]]()
var rank = [Int]()
var i = 0
for _ in 0..<n {
    v.append(readLine()!.split(separator:  " ").map { Int($0)! })
    rank.append(0)
}

for li in v {
    let temp = v.filter {
        if $0[0] > li[0] && $0[1] > li[1]{
            return true
        } else {
            return false
        }
    }
    rank[i] = temp.count + 1
    i+=1
}

for item in rank {
    print("\(item)",terminator: " ")
}
