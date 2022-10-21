import Foundation

let str = Array(readLine()!)
let len = str.count
var count = [Character: [Int]]()
var index = [Character: Int]()
var result = ""

for i in Character("a").asciiValue!...Character("z").asciiValue! {
    var temp = Array(repeating: 0, count: len)
    if str[0].asciiValue! == i {
        temp[0] = 1
    }
    
    for j in 1..<len {
        if Character(String(str[j])).asciiValue! == i {
            temp[j] = temp[j-1] + 1
        } else {
            temp[j] = temp[j-1]
        }
    }
    
    count[Character(String(UnicodeScalar(i)))] = temp
    
}

let c = Int(readLine()!)!

for _ in 0..<c {
    let input = readLine()!.split(separator: " ")
    let char = Character(String(input[0]))
    let start = Int(input[1])!
    let end = Int(input[2])!
    
    if start == 0 {
        result += "\(count[char]![end])\n"
    } else {
        result += "\(count[char]![end] - count[char]![start-1])\n"
    }
    
}
print(result)
