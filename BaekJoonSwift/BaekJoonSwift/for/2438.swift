import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    var str = ""
    for _ in 1...i {
        str.append(contentsOf: "*")
    }
    print(str)
}
