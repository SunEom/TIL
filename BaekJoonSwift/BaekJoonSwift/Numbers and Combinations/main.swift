import Foundation

let n = Int(readLine()!)!


for _ in 0..<n {
    var temp = readLine()!.split(separator: " ").map { Int($0)! }
    var result = temp[0] * temp[1]
    while temp[0] != 0 && temp[1] != 0 {
        if temp[0] > temp[1] {
            temp[0] %= temp[1]
        } else {
            temp[1] %= temp[0]
        }
    }
    print(result/temp.max()!)
}
