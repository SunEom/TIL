import Foundation

var arr = [Int]()

for var i in 1...10000 {
    var num = i
    
    while i != 0 {
        num += i%10
        i/=10
    }
    if !arr.contains(num) && num <= 10000  {
        arr.append(num)
    }
    
}

for i in 1...10000 {
    if !arr.contains(i) {
        print(i)
    }
}

