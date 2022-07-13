func union(_ a: String, _ b: String) {
    let aset = find(a)
    let bset = find(b)
    
    if aset != bset {
        if aset > bset {
            set[aset] = bset
        } else {
            set[bset] = aset
        }
        
        
        let acount = count[aset]!
        let bcount = count[bset]!
        count[aset]! += bcount
        count[bset]! += acount
    }
    
}

func find(_ person: String) -> String {
    var top = person
    while set[top]! != top {
        top = set[top]!
    }
    return top
}
var count = [String: Int]()
var set = [String: String]()
let N = Int(readLine()!)!
var result = ""

for _ in 0..<N {
    let K = Int(readLine()!)!
    
    for _ in 0..<K {
        let persons = readLine()!.split(separator: " ").map { String($0) }
        if set[persons[0]] == nil {
            set[persons[0]] = persons[0]
            count[persons[0]] = 1
        }
        
        if set[persons[1]] == nil {
            set[persons[1]] = persons[1]
            count[persons[1]] = 1
        }
        
        union(persons[0], persons[1])
        
        result += "\(count[find(persons[0])]!)\n"

        
        
    }
    
    set = [String: String]()
}

print(result)
