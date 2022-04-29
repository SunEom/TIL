import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let arr = readLine()!.split(separator: " ").map { Int($0)! }
var remainders = [0]
var result = 0
var temp = [Int]()

for _ in 0..<input[1] {
    temp.append(0)
}

for num in arr {
    let n = (remainders.last! + num)%input[1]
    remainders.append(n)
    temp[n] += 1
}

result += temp[0]

for n in temp {
    result += (n*(n-1))/2
}
print(result)
