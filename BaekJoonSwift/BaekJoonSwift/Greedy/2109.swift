// 2109 순회강연

let n = Int(readLine()!)!

var arr = [(p: Int, d: Int)]()
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append((input[0], input[1]))
}

arr.sort { a, b in
    if a.d == b.d {
        return a.p > b.p
    } else {
        return a.d < b.d
    }
}


var day = 1


for lecture in arr {
    if day <= lecture.d {
        day += 1
        result += lecture.p
    }
}

print(result)
