import Foundation

func isPrime(num : Int) -> Bool {
    var result = true
    if num == 1 {
        return false
    }
    
    if num == 2 || num == 3 {
        return true
    }
    
    for i in 2...Int(sqrt(Double(num))) {
        if num % i == 0 {
            result = false
            break
        }
    }
    
    return result
}

let a = Int(readLine()!)!
let b = Int(readLine()!)!
var minValues = -1
var sum = 0

for i in a...b {
    if isPrime(num: i) {
        sum += i
        if minValues == -1 {
            minValues = i
        }
    }
}

if minValues != -1 {
    print(sum)
    print(minValues)
} else {
    print(-1)
}
