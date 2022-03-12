import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let iValues = readLine()!.split(separator: " ")
    let count = Int(iValues[0])!
    let string = Array(iValues[1])
    
    for char in string {
        for _ in 0..<count {
            print(char, terminator: "")
        }
    }
    print()
    
}
