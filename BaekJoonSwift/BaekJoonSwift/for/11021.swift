import Foundation

let n = Int(readLine()!)!

for i in (1...n) {
    let values = readLine()!.split(separator: " ").map { Int($0)!}
    print("Case #\(i): \(values[0]+values[1])")
}
