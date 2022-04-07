import Foundation
var cost = [[Int]]()

let n = Int(readLine()!)!

for _ in 0..<n {
    cost.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for i in 1..<n {
    cost[i][0] += min(cost[i-1][1], cost[i-1][2])
    cost[i][1] += min(cost[i-1][0], cost[i-1][2])
    cost[i][2] += min(cost[i-1][1], cost[i-1][0])
}

print(cost[cost.count-1].min()!)
