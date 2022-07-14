let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]

var set = Array(repeating: 0, count: N)
(0..<N).forEach {
    set[$0] = $0
}

func find(n: Int) -> Int {
    var idx = set[n]
    while idx != set[idx] {
        idx = set[idx]
    }
    return idx
}

func union(_ a: Int, _ b: Int) {
    let aset = find(n: a)
    let bset = find(n: b)
    
    if aset > bset {
        set[aset] = bset
    } else {
        set[bset] = aset
    }
}

func solve() {
    for i in 1...M {
        let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
        
        if find(n: temp[0]) == find(n: temp[1]) {
            print(i)
            return
        }
        
        union(temp[0], temp[1])
        
    }
    print(0)
}

solve()

