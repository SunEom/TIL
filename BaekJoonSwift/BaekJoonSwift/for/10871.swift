import Foundation

let data = readLine()!.split(separator: " ").map { Int($0)! }
let arr = readLine()!.split(separator: " ").map { Int($0)! }

for item in arr.filter { $0 < data[1] } {
    print(item, terminator: " ")
}
print()
