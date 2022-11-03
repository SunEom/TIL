// 특정한 최단 경로

import Foundation
//// timeover
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let v = input[0]
//let e = input[1]
//
//var cost = Array(repeating: Array(repeating: 1001, count: v+1), count: v+1)
//
//for _ in 0..<e {
//    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
//    cost[temp[0]][temp[1]] = temp[2]
//    cost[temp[1]][temp[0]] = temp[2]
//}
//
//for k in 1...v {
//    for i in 1...v {
//        for j in 1...v {
//            cost[i][j] = min(cost[i][j], cost[i][k] + cost[k][j])
//        }
//    }
//}
//
//let target = readLine()!.split(separator: " ").map { Int(String($0))! }
//print(min(cost[1][target[0]] + cost[target[0]][target[1]] + cost[target[1]][v], cost[1][target[1]] + cost[target[1]][target[0]] + cost[target[0]][v]))


