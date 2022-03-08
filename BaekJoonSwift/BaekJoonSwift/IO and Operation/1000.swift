import Foundation

let inputValues = readLine()!.split(separator: " ").map{ Int($0)! }

print(inputValues[0] + inputValues[1])
