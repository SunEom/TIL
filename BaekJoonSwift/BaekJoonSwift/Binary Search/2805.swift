import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0

var s = 0
var e = arr.max()!

while s <= e {
    let m = (s+e)/2
    var temp = 0
    for num in arr {
        let diff = num-m
        if diff > 0 {
            temp += diff
        }
    }
    if temp == input[1] {
        result = m
        break
    }
    else if temp > input[1] {
        result = m
        s = m + 1
    }
    else if temp < input[1] {
        e = m - 1
    }
}
print(result)
