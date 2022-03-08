import Foundation

let iValues = readLine()!.split(separator: " ").map { Double($0)! }

print(iValues[0] / iValues[1])
