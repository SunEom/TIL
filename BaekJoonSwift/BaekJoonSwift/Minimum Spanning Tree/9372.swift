import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let N = input[0], M = input[1]
    
    for _ in 0..<M {
        let _ = readLine()
    }
    
    print(N-1)
}
