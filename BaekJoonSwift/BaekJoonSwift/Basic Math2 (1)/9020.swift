import Foundation

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

let n = Int(readLine()!)!

for _ in 0..<n {
    let num = Int(readLine()!)!
    var i = num/2
    
    while true {
        if isPrime(num: i) && isPrime(num: num-i){
            break
        }
        i -= 1
    }
    print(i, num-i)
}
