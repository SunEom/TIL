import Foundation

let input = readLine()!.split(separator: " ").map {Int($0)!}
let N = input[0]
let M = input[1]

var result = ""
var arr = [String]()
var dict = [String: Bool]()

for _ in 0..<N{
    let name = readLine()!
    dict[name] = true
}

for _ in 0..<M{
    let name = readLine()!
    if dict[name] != nil {
        arr.append(name)
    }
}

arr.sort()

print(arr.count)
print(arr.joined(separator: "\n"))
