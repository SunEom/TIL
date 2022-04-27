import Foundation

let string = Array(readLine()!)
let count = Int(readLine()!)!
var result = ""

for _ in 0..<count {
    let input = readLine()!.split(separator: " ")
    let ch = Character(String(input[0]))
    let s = Int(input[1])!
    let e = Int(input[2])!
    let temp = string[s...e].filter { c in
        return c == ch
    }.count
    result += "\(temp)\n"
}

print(result)
