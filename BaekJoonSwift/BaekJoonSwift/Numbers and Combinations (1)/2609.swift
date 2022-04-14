import Foundation

var i = readLine()!.split(separator: " ").map { Int($0)! }
var lcm = i[0]*i[1]
while i[0] != 0 && i[1] != 0 {
    if i[0] > i[1] {
        i[0] %= i[1]
    } else {
        i[1] %= i[0]
    }
}

let gcd = i.max()!
lcm /= gcd
print(i.max()!)
print(lcm)

