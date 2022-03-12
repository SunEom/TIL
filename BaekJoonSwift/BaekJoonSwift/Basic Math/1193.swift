import Foundation

var arr = [String]()
let len = Int(readLine()!)!
var i = 1
var limit = 0

while limit < len {
    limit += i
    i += 1
}

if i % 2 == 0 {
    print("\(1+limit-len)/\(i-1-limit+len)")
} else {
    print("\(i-1-limit+len)/\(1+limit-len)")
}

