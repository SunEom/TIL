import Foundation

let N = Int(readLine()!)!
let k = Int(readLine()!)!

var s = 1
var e = min(N*N, Int(pow(10.0, 9.0)))
var result = 0

while s <= e {
    let m = (s+e)/2
    if count(num : m) >= k {
        result = m
        e = m-1
    } else {
        s = m+1
    }
}


func count(num: Int) -> Int {
    var count = 0
    for i in 1..<N+1 {
        count += num / i > N ? N : num / i
    }
    return count
}

print(result)

