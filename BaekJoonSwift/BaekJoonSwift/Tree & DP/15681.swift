//트리와 쿼리

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0] // 정점 개수
let R = input[1] // 루트 번호
let Q = input[2] // 쿼리의 수

var edges = Array(repeating: [Int](), count: N+1)
var dpList = Array(repeating: 0, count: N+1)
var level = Array(repeating: 0, count: N+1)

for _ in 0..<N-1 {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    edges[temp[0]].append(temp[1])
    edges[temp[1]].append(temp[0])
}

func dp(parent: Int, vertex:Int) {
    if parent != -1, edges[vertex].count == 1 {
        dpList[vertex] = 1
    } else {
        dpList[vertex] = 1
        for v in edges[vertex] {
            if v != parent {
                if dpList[v] == 0 {
                    dp(parent: vertex, vertex: v)
                }
                dpList[vertex] += dpList[v]
            }
        }
    }
}

dp(parent: -1, vertex: R);

var result = ""
for _ in 0..<Q {
    result += "\(dpList[Int(readLine()!)!])\n"
}
print(result)
