import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = [Int]()
var result = 0

for _ in 0..<input[0] {
    arr.append(Int(readLine()!)!)
}

var upperBound = arr.max()!
var lowerBound = 1

while lowerBound <= upperBound {
    let m = (lowerBound + upperBound) / 2
    var temp = 0
    arr.forEach { num in
        temp += num / m
    }
    
    if temp >= input[1] {
        lowerBound = m+1
        if result < m {
            result = m
        }
    }
    else {
        upperBound = m-1
    }
}

print(result)
