import Foundation

var input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let weight = input[1]
var items = [[Int]]()
var result = 0

for _ in 0..<n {
    items.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

func dp(n: Int, idx: Int, maxWeight: Int, weight: Int, value: Int) {
    if idx == n {
        return
    }
    
    for i in idx..<n {
        if weight + items[i][0] <= maxWeight {
            if value + items[i][1] > result {
                result = value + items[i][1]
            }
            dp(n: n, idx: idx+1, maxWeight: maxWeight, weight: weight+items[i][0], value: value + items[i][1])
        }
    }
}

dp(n: n, idx: 0, maxWeight: weight, weight: 0, value: 0)

print(result)

