// 13904 과제

let n = Int(readLine()!)!
var arr = [(Int, Int)]()
var result = 0

for _ in 0..<n {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append((temp[0], temp[1]))
}

arr.sort { $0.1 > $1.1}


var list = Array(repeating: 0, count: 1001)
var i = 0

while i < arr.count {
    for j in stride(from: arr[i].0, to: 0, by: -1) {
        if list[j] == 0 {
            list[j] = arr[i].1
            result += list[j]
            break
        }
    }
    i+=1
}

print(result)
