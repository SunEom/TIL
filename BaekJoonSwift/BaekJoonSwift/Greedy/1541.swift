import Foundation

var str = readLine()!

var temp = str.split(separator: "-")
var temp2 = [Int]()
temp2 = temp.map {
    var t = $0.split(separator: "+").map { Int($0)! }
    var sum = 0
    for a in t {
        sum += a
    }
    return sum
}

var result = temp2[0]

for i in 1..<temp2.count {
    result -= temp2[i]
}
print(result)
