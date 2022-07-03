import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let N = input[0]
let M = input[1]
var result = ""

var set = Array(repeating: -1, count: N+1)
(0...N).forEach{ set[$0] = $0 }


func find(_ index: Int) -> Int {
    var idx = index
    while set[idx] != idx {
        idx = set[idx]
    }
    return idx
}

func union(_ a: Int, _ b: Int) {
    let aset = find(a)
    let bset = find(b)
    
    if aset > bset {
        set[bset] = aset
    } else {
        set[aset] = bset
    }
}

for _ in 0..<M {
    let command = readLine()!.split(separator: " ").map{Int(String($0))!}
    if command[0] == 0 {
        union(command[1], command[2])
    } else if command[0] == 1 {
        let aset = find(command[1])
        let bset = find(command[2])
        
        if aset == bset {
            result += "YES\n"
        } else {
            result += "NO\n"
        }
    }
}

print(result)
