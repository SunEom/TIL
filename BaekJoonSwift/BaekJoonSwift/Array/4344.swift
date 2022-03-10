import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    var iValues = readLine()!.split(separator: " ").map { Int($0)! }
    let len = iValues[0]
    let arr = iValues[1...]
    let sum = arr.reduce(0, {$0+$1})
    let avg = Double(sum) / Double(len)
    let upperRate = Double(arr.filter{Double($0) > avg}.count)/Double(len)
    
    print("\(String(format: "%.3f", upperRate*100))%")
}
