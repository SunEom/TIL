// 경찰차

import Foundation

let n = Int(readLine()!)!
let w = Int(readLine()!)!

var p1 = (1, 1)
var p2 = (n, n)
var total = 0
var targets = [(0,0)]

var dp = Array(repeating: Array(repeating: -1, count: w+1), count: w+1)
var route = Array(repeating: Array(repeating: [Int](), count: w+1), count: w+1)

func getDistance(_ p1: (Int, Int), _ p2: (Int, Int)) -> Int {
    return abs(p1.0-p2.0) + abs(p1.1-p2.1)
}

func solve(_ i : Int, _ j : Int) -> Int {
    if i == w || j == w {
        return 0
    }
    
    if dp[i][j] != -1 {
        return -1
    }
    
    let caseIndex = max(i, j) + 1
    let d1 = getDistance(p1, targets[caseIndex])
    let nd1 = solve(caseIndex, j) + d1
    
    let d2 = getDistance(p2, targets[caseIndex])
    let nd2 = solve(i, caseIndex) + d2
    
    if nd1 > nd2 {
        dp[i][j] = nd2
        route[i][j] = [2] + route[i][caseIndex]
        return nd2
    } else {
        dp[i][j] = nd1
        route[i][j] = [1] + route[i][caseIndex]
        return nd1
    }
    
}

for _ in 0..<w {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let t = (input[0], input[1])
    targets.append(t)
}

print(solve(0, 0))
print(route[0][0].map{ String($0) }.joined(separator: "\n"))

//for _ in 0..<w {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let t = (input[0], input[1])
//
//    let nearIndex = getNearPolice(p1, p2, t)
//
//    if nearIndex == 1 {
//        let d = getDistance(p1, t)
//        total += d
//        p1 = t
//        moveIndex.append(1)
//    } else {
//        let d = getDistance(p2, t)
//        total += d
//        p2 = t
//        moveIndex.append(2)
//    }
//}

//print(total)
//print(moveIndex.map { String($0) }.joined(separator: "\n"))
