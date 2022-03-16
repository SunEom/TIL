import Foundation

let iValues = readLine()!.split(separator:  " ").map { Double($0)! }

print(Int(ceil((iValues[2] - iValues[1]) / (iValues[0] - iValues[1]))))
