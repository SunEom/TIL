import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var chess = [[String]]()
var results = [Int]()

for _ in 0..<input[0] {
    let temp = Array(readLine()!).map { String($0) }
    chess.append(temp)
}


for i in 0...input[0]-8 {
    for j in 0...input[1]-8 {
        var a = 0 // start with B
        var b = 0 // start with W
        
        for r in 0..<8 {
            for c in 0..<8 {
                if (r+c) % 2 == 0 && chess[i+r][j+c] == "W" || (r+c) % 2 == 1 && chess[i+r][j+c] == "B" {
                    a += 1
                }
            }
        }
        
        for r in 0..<8 {
            for c in 0..<8 {
                if (r+c) % 2 == 0 && chess[i+r][j+c] == "B" || (r+c) % 2 == 1 && chess[i+r][j+c] == "W"{
                    b += 1
                }
            }
        }
        
        results.append(min(a,b))
    }
}

print(results.sorted().first!)
