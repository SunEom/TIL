//1922 네트워크 연결

var result = 0
let N = Int(readLine()!)!
let M = Int(readLine()!)!
var edges = [[Int]]()

for _ in 0..<M {
    edges.append(readLine()!.split(separator: " ").map {Int(String($0))! })
}

var set = Array(0...N)

func union(_ a: Int, _ b: Int) {

    let s1 = find(a)
    let s2 = find(b)
    
    if s1 != s2 {
        set[s2] = s1
    }
    
}

func find(_ a: Int) -> Int {
    return set[a] == a ? a : find(set[a])
}

edges.sort { $0[2] < $1[2] }

for e in edges {
    if find(e[0]) != find(e[1]) {
        result += e[2]
        union(e[0], e[1])
    }
}

print(result)
