// 운동

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let v = input[0]
let e = input[1]

var costs = Array(repeating: Array(repeating: 5000000, count: v+1), count: v+1)

for _ in 0..<e {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    costs[temp[0]][temp[1]] = temp[2]
}

for h in 1...v {
    for i in 1...v {
        for j in 1...v {
            if h != i && h != j {
                costs[i][j] = min(costs[i][j], costs[i][h] + costs[h][j])
            }
        }
    }
}

var result = 5000000
for i in 1...v {
    if result > costs[i][i] {
        result = costs[i][i]
    }
}

print("\(result == 5000000 ? -1 : result)")
