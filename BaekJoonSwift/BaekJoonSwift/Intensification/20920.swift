//20920 영단어 암기는 괴로워

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var dict = [String: Int]()

for _ in 0..<input[0] {
    let str = readLine()!
    
    if str.count < input[1] {
        continue
    }
    
    if dict[str] == nil {
        dict[str] = 1
    } else {
        dict[str]! += 1
    }
}

print(dict.keys.sorted {
    if dict[$0]! != dict[$1]! {
        return dict[$0]! > dict[$1]!
    } else if $0.count != $1.count {
        return $0.count > $1.count
    } else {
        return $0 < $1
    }
}.joined(separator: "\n"))
