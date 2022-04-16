import Foundation

func factorial(n : Int) -> Int {
    var result = 1
    if n>=1 {
        for i in 1...n {
            result *= i
        }
    }
    
    return result
}

let arr = readLine()!.split(separator: " ").map { Int($0)! }

print(factorial(n: arr[0])/(factorial(n: arr[1]) * factorial(n: arr[0]-arr[1])))
