// 2475 검증수

import Foundation

let a = readLine()!.split(separator: " ").map { Int(String($0))! }

var result = 0

for n in a {
    result += n*n
}

print(result % 10)
