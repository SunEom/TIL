import Foundation

let iValues = readLine()!.split(separator: " ").map { Int($0)! }
let a = iValues[0]
let b = iValues[1]
let c = iValues[2]

var result = 0.0

if b  == c{
    print(-1)
} else {
    result = Double(a)/Double(c-b) + 1

    if result < 0 {
        print(-1)
    } else {
        print(Int(result))
    } 

}
