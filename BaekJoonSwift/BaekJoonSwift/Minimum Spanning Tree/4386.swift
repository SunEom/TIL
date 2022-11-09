// 별자리 만들기

import Foundation

func find(x: Int) -> Int {
    if set[x] == x { return x }
    else { return find(x: set[x]) }
}

func union(x: Int, y: Int) {
    let set1 = find(x: x)
    let set2 = find(x: y)
    
    if set1 != set2 {
        set[set2] = set1
    }
}

func getDistance (from : (Double, Double), to: (Double, Double)) -> Double {
    let t1 = (from.0 - to.0) * (from.0 - to.0)
    let t2 = (from.1 - to.1) * (from.1 - to.1)
    return sqrt(t1+t2)
}

var v = [(Double, Double)]()
var e = [(Int, Int, Double)]() // from, to, distance
var result = 0.0

let N = Int(readLine()!)!

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Double(String($0))! }
    
    for i in 0..<v.count {
        let d = getDistance(from: v[i], to: (input[0], input[1]))
        e.append((i, v.count, d))
    }
    
    v.append((input[0], input[1]))
}

var set = [Int]()
for i in 0..<N {
    set.append(i)
}

e.sort { $0.2 < $1.2 }


var edgeCount = 0

for edge in e {
    if edgeCount == N-1 {
        break
    }
    
    if find(x: edge.0) != find(x: edge.1) {
        result += edge.2
        union(x: edge.0, y: edge.1)
        edgeCount += 1
    }
}

print(result)
