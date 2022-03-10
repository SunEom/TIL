import Foundation

while true {
    let inputValues = readLine()!.split(separator: " ").map { Int($0)! }
    let A = inputValues[0]
    let B = inputValues[1]
    
    if A == 0 && B == 0 {
        break
    }
    
    print(A+B)
}
