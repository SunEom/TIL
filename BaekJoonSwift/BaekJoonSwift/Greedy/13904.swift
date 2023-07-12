// 13904 과제

let N = Int(readLine()!)!
var list = [(d: Int, w: Int)]()
var now = 0
var result = 0
for _ in 0..<N {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    list.append((temp[0], temp[1]))
}

list.sort {
    if $0.d != $1.d {
        return $0.d < $1.d
    } else {
        return $0.w > $1.w
    }
}

var i = 0
while i < list.count {
    if now < list[i].d {
        print(list[i])
        result += list[i].w
        now += 1
    }
    
    i += 1
    
}

print(result)
