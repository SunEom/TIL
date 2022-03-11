import Foundation

let n = Int(readLine()!)!
var result = 0
var isHan = true
for var i in 1...n {
    isHan = true
    if i/100 == 0 {
        result+=1
        continue
    }
    
    var first = i%10
    i/=10
    var second = i%10
    i/=10
    var third = i%10
    i/=10
    
    var diff = first - second
    while true {
        if second-third != diff {
            isHan = false
            break
        }
        if i == 0 {
            break
        }
        second = third
        third = i%10
        i/=10
    }
    
    if isHan {
        result+=1
    }
}

print(result)
