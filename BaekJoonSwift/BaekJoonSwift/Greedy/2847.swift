// 2847 게임을 만든 동준이

let n = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}
var result = 0

for i in stride(from: arr.count-1, through: 1, by: -1) {
    if arr[i] <= arr[i-1] {
        result += arr[i-1] - arr[i] + 1
        arr[i-1] = arr[i] - 1
    }
}

print(result)
