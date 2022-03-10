import Foundation

let n = Int(readLine()!)!
var result = 0
var score = 0
for _ in 0..<n {
    let arr = Array(readLine()!)
    result = 0
    score = 0
    for c in arr {
        if c == "O" {
            score += 1
            result += score
        } else if c == "X" {
            score = 0
        }
    }
    
    print(result)
}
