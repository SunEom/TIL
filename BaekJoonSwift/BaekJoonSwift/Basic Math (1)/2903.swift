//2903 중앙 이동 알고리즘

let n = Int(readLine()!)!
var arr = [2]

for _ in 0..<n {
    arr.append(2*arr.last!-1)
}

print(arr.last!*arr.last!)
