import Foundation

var factorial = [Int]()
let input = readLine()!.split(separator: " ").map { Int($0)! }
var prev = 1
let mod = 1000000007

for i in 1...input[0] {
    prev *= i
    while prev >= mod {
        prev %= mod
    }
    if i == input[1] || i == input[0]-input[1] || i == input[0] {
        factorial.append(prev)
    }
}

if factorial.count == 3 {
    print(factorial[2]/factorial[0]/factorial[1])
}
else {
    print(factorial[1]/factorial[0]/factorial[0])
}

print(factorial)

