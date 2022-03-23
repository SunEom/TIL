import Foundation

var numbers = [Int]()
var len = Int(readLine()!)!
var i = 666
while numbers.count != len {
    var numOfSix = 0
    var temp = i
    while temp != 0 {
        if temp%10 == 6 {
            numOfSix += 1
        } else {
            numOfSix = 0
        }
        temp /= 10
        if numOfSix == 3 {
            numbers.append(i)
        }
    }
    i += 1
}

print(numbers.last!)
