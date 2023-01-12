// 2096 내려가기

import Foundation

let N = Int(readLine()!)!
var cost = [[Int]]()

for _ in 0..<N {
    cost.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

var minDp = cost
var maxDp = cost

for i in 1..<N {
    for j in 0...2 {
        var minTemp = [Int]()
        for k in -1...1 {
            
            if (0...2).contains(j+k) {
                maxDp[i][j] = max(maxDp[i][j], cost[i][j]+maxDp[i-1][j+k])
                minTemp.append(cost[i][j]+minDp[i-1][j+k])
            }
        }
        minDp[i][j] = minTemp.min()!
    }
}

print(maxDp.last!.max()!, minDp.last!.min()!)

