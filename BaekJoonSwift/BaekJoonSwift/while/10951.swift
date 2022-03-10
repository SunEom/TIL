import Foundation

while true {
    let iValues = try readLine()!.split(separator: " ").map { Int($0)! }
    print(iValues[0] + iValues[1])
}
