import Foundation

var cost = [[Int]]()
let n = Int(readLine()!)!

for _ in 0..<n {
    cost.append(readLine()!.split(separator: " ").map { Int($0)! })
}

if n == 1 {
    print(cost[0][0])
} else {
    for i in 2...n {
        for j in 0..<cost[n-i].count {
            cost[n-i][j] += max(cost[n-i+1][j], cost[n-i+1][j+1])
        }
    }
    print(cost[0][0])
}
