// 14469 소가 길을 건너는 이유 3

let n = Int(readLine()!)!
var arr = [(Int, Int)]()
var result = 0

for _ in 0..<n {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append((temp[0], temp[1]))
}

arr.sort { $0.0 < $1.0 }

for a in arr {
    result = a.0 > result ? a.0 : result
    result += a.1
}

print(result)
