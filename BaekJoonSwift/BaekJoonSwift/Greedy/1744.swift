// 1744 수 묶기

import Foundation


let n = Int(readLine()!)!

var positive = [Int]()
var negative = [Int]()
var zero = 0
var result = 0

for _ in 0..<n {
    let input = Int(readLine()!)!
    
    if input == 0 {
        zero += 1
    } else if input > 0 {
        positive.append(input)
    } else {
        negative.append(input)
    }
}

positive.sort(by: >)
negative.sort(by: <)

var i = 0

while i+1 < positive.count {
    if positive[i] * positive[i+1] > positive[i] + positive[i+1] {
        result += positive[i] * positive[i+1]
        i += 2
    } else {
        result += positive[i]
        i += 1
    }
}

if i < positive.count {
    result += positive[i]
}

if negative.count % 2 == 0 {
    i = 0

    while i+1 < negative.count {
        result += negative[i] * negative[i+1]
        i += 2
    }
} else if negative.count == 1 {
    if zero == 0 {
        result += negative[0]
    }
} else {
    i = 0

    while i+1 < negative.count {
        result += negative[i] * negative[i+1]
        i += 2
    }

    if zero == 0 {
        result += negative[i]
    }
}

print(result)
