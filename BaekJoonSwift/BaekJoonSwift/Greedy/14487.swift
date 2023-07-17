// 14487 육제는 효도쟁이야!!

let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

print(arr.reduce(0, +) - arr.last!)

