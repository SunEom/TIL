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

let length = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }
var r = 0

arr.forEach{
    if isPrime(num: $0) {
        r += 1
    }
}

print(r)
