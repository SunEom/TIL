// 15686 치킨 배달

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var houses = [(Int, Int)]()
var chickens = [(Int, Int)]()

func solve(_ sidx: Int, _ store: [(Int, Int)]) -> Int {
    if store.count == input[1] {
        var result = 0
        for h in houses {
            var minDis = Int.max
            for s in store {
                let distance = abs(h.0-s.0) + abs(h.1-s.1)
                minDis = min(minDis, distance)
            }
            result += minDis
        }
        return result
    } else {
        var result = Int.max
        for i in (sidx+1)..<chickens.count {
            result = min(result, solve(i, store + [chickens[i]]))
        }
        return result
    }
}

for i in 0..<input[0] {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    for j in 0..<input[0] {
        if temp[j] == 1 {
            houses.append((i,j))
        } else if temp[j] == 2 {
            chickens.append((i,j))
        }
    }
}

var result = Int.max

for i in 0..<chickens.count {
    result = min(result, solve(i, [chickens[i]]))
}

print(result)
