import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    var arr = readLine()!.split(separator: " ").map { Int($0)! }
    var x = arr[2] % arr[0] == 0 ? arr[0] : arr[2] % arr[0]
    var y = arr[2] % arr[0] == 0 ? arr[2] / arr[0] : arr[2] / arr[0] + 1
    var string = y / 10 == 0 ? "\(x)0\(y)" : "\(x)\(y)"
    print(string)
}
