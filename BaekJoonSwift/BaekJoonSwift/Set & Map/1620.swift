import Foundation

var idx = 1
var result = ""
let input = readLine()!.split(separator: " ").map { Int($0)! }

let N = input[0]
let M = input[1]

var dict = [String: Int]()
var arr = [""]
for _ in 0..<N {
    let pokemon = readLine()!
    dict[pokemon] = idx
    arr.append(pokemon)
    idx += 1
}

for _ in 0..<M {
    let str = readLine()!
    if str == str.uppercased() { // 숫자이면
        result += "\(arr[Int(str)!])\n"
    } else {
        result += "\(dict[str]!)\n"
    }
}

print(result)
