import Foundation

let iValues = readLine()!.split(separator: " ").map { Int($0)! }
let A = iValues[0]
let B = iValues[1]
let C = iValues[2]

print((A+B)%C)
print(((A%C) + (B%C))%C)
print((A*B)%C)
print(((A%C) * (B%C))%C)
