import Foundation

let n1 = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }

let n2 = Int(readLine()!)!
let target = readLine()!.split(separator: " ").map { Int($0)! }

arr.sort()

var result = ""

for t in target {
    var s = 0
    var e = n1-1
    var isIn = false
    while s <= e {
        let m = (s+e)/2
        if arr[m] == t || arr[s] == t || arr[e] == t{
            result += "1\n"
            isIn = true
            break
        } else if arr[m] > t {
            e = m-1
        } else {
            s = m+1
        }
    }
    
    if !isIn {
        result += "0\n"
    }
}

print(result)
