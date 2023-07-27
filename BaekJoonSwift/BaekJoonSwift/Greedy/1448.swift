// 1448 삼각형 만들기

let n = Int(readLine()!)!
var arr = [Int]()
var result = -1
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort(by: >)

for i in 0..<n-2 {
    if arr[i] < arr[i+1] + arr[i+2] {
        result = arr[i] + arr[i+1] + arr[i+2]
        break
    }
}

print(result)
