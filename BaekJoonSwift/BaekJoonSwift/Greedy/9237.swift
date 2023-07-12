// 9237 이장님 초대

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map {Int(String($0))!}.sorted(by: >)

var result = 0
for i in 0..<arr.count {
    if result < arr[i] + i + 2 {
        result = arr[i] + i + 2
    }
}

print(result)
