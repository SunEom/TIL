import Foundation

let n = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

for num in arr.sorted() {
    print(num)
}
