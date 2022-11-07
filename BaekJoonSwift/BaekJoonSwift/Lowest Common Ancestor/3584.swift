// 가장 가까운 공통 조상

import Foundation

let T = Int(readLine()!)!
var result = ""

for _ in 0..<T {
    let N = Int(readLine()!)!
    var nodes = Array(repeating: -1, count: N+1)
    
    for _ in 0..<N-1 {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        nodes[input[1]] = input[0]
    }
    
    let target = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    var t1 = target[0]
    var t2 = target[1]
    var parent1 = [t1]
    var parent2 = [t2]
    
    while nodes[t1] != -1 {
        parent1.append(nodes[t1])
        t1 = nodes[t1]
    }
    
    while nodes[t2] != -1 {
        parent2.append(nodes[t2])
        t2 = nodes[t2]
    }
    
    for v in parent1 {
        if parent2.contains(v) {
            result += "\(v)\n"
            break
        }
    }
    
}

print(result)
