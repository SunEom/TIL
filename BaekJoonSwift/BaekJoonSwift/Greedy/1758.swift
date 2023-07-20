// 1758 알바생 강호

let n = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort(by: >)

var i = 0, j = 0
var result = 0

while i < arr.count {
    while j < arr.count {
        if arr[j] > i {
            result += arr[j] - i
            j += 1
            break
        } else {
            j += 1
        }
    }
    i += 1
}

print(result)
