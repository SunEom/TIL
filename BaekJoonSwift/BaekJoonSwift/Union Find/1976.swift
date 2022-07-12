let N = Int(readLine()!)!
let M = Int(readLine()!)!
var set = Array(repeating: -1, count: N)
(0..<N).forEach{ set[$0] = $0 }
var edges = [[Int]]()
var destinations = [Int]()


func union(a: Int, b: Int) {
    var aSet = find(a)
    var bSet = find(b)
    
    if aSet > bSet {
        set[bSet] = aSet
    } else {
        set[aSet] = bSet
    }
    
}

func find(_ a: Int) -> Int {
    var top = a
    while set[top] != top {
        top = set[top]
    }
    
    return top
}

func solve() {

    for _ in 0..<N {
        edges.append(readLine()!.split(separator: " ").map { Int(String($0))! })
    }

    destinations = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }

    for i in 0..<N {
        for j in i+1..<N {
            if edges[i][j] == 1 {
                union(a: i, b: j)
            }
        }
    }

    for i in 0..<destinations.count-1 {
        if find(destinations[i]) != find(destinations[i+1]) {
            print("NO")
            return
        }
    }
    print("YES")

}

solve()
