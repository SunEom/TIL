// 2056 작업

import Foundation

let N = Int(readLine()!)!
var cost = Array(repeating: 0, count: N+1)
var edges = Array(repeating: [Int](), count: N+1)
var indegree = Array(repeating: 0, count: N+1)
var pre = Array(repeating: [Int](), count: N+1)

for i in 1...N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    cost[i] = input[0]
    pre[i].append(contentsOf: input[2...])
    indegree[i] = input[2...].count
    for k in input[2...] {
        edges[k].append(i)
    }
}

var queue = [Int]()

for i in 1...N {
    if indegree[i] == 0 { queue.append(i) }
}
while queue.count > 0 {
    let t = queue.removeFirst()
    for c in edges[t] {
        if indegree[c] > 0 {
            indegree[c] -= 1
            
            if indegree[c] == 0 {
                queue.append(c)
                var maxValue = 0
                for j in pre[c] {
                    maxValue = max(maxValue, cost[j])
                }
                cost[c] += maxValue
            }
            
        }
    }
}

print(cost.max()!)
