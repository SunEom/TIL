// 19539 사과나무

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
let sum = arr.reduce(0, +)
if sum % 3 != 0 {
    print("NO")
} else {
    if arr.map { $0/2 }.reduce(0, +) >= sum / 3 {
        print("YES")
    } else {
        print("NO")
    }
}
