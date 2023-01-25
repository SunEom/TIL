// 3055 탈출

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let R = input[0]
let C = input[1]
var arr = [[String]]()

for _ in 0..<R {
    arr.append(Array(readLine()))
}
