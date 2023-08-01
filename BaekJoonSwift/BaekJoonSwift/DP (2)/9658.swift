// 9658 돌 게임 3

let N = Int(readLine()!)!
var arr = Array(repeating: 0, count: N+1)

// 상근 : 승-1 패-0

arr[1] = 0
if N >= 2 {
    arr[2] = 1
}

if N >= 3 {
    arr[3] = 0
}

if N >= 4 {
    arr[4] = 1
}

for i in stride(from: 5, through: N, by: 1) {
    if arr[i-1] == 1 && arr[i-3] == 1 && arr[i-4] == 1 {
        arr[i] = 0
    } else {
        arr[i] = 1
    }
}

print(arr[N] == 1 ? "SK" : "CY")
