import Foundation

let inputValues = readLine()!.split(separator: " ").map { Int($0)! }

if inputValues[0] == inputValues[1] {
    print("==")
}
else if inputValues[0] < inputValues[1] {
    print("<")
}
else {
    print(">")
}
