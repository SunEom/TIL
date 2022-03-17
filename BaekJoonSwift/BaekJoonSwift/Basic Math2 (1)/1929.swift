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

let values = readLine()!.split(separator: " ").map { Int($0)! }

for i in values[0]...values[1] {
    if isPrime(num: i){
        print(i)
    }
}
