import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var money = input[1]
var coins = [Int]()
var result = 0
for _ in 0..<n {
    coins.append(Int(readLine()!)!)
}

for c in coins.reversed() {
    if money == 0 {
        break
    }
    result += money/c
    money %= c
}

print(result)
