// 1766 문제집

import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input[0]
let M = input[1]
var inCount = Array(repeating: 0, count: N+1)
var outEdges = Array(repeating: [Int](), count: N+1)
var visited = Array(repeating: false, count: N+1)
var visitedCnt = 0

for _ in 0..<M {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    let from = temp[0], to = temp[1]
    inCount[to] += 1
    outEdges[from].append(to)
}

var result = ""

while visitedCnt != N {
    for i in 1...N {
        if !visited[i] && inCount[i] == 0 {
            result += "\(i) "
            visited[i] = true
            visitedCnt += 1
            for v in outEdges[i] {
                inCount[v] -= 1
            }
            break
        }
    }
}

print(result)
