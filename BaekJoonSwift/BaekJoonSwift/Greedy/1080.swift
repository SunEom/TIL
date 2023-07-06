// 1080 행렬

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var arr1 = [[Int]]()
var arr2 = [[Int]]()
var result = 0

for _ in 0..<input[0] {
    arr1.append(Array(readLine()!).map { Int(String($0))! })
}

for _ in 0..<input[0] {
    arr2.append(Array(readLine()!).map { Int(String($0))! })
}


for i in stride(from: 0, through: input[0]-3, by: 1) {
    for j in stride(from: 0, through: input[1]-3, by: 1) {
        if arr1[i][j] != arr2[i][j] {
            result += 1
            for a in 0..<3 {
                for b in 0..<3 {
                    arr1[i+a][j+b] = arr1[i+a][j+b] == 1 ? 0 : 1
                }
            }
        }
    }
}

var isbreak = false
for r in 0..<input[0] {
    for c in 0..<input[1] {
        if arr1[r][c] != arr2[r][c] {
            isbreak = true
            result = -1
            break
        }
    }
    if isbreak {
        break
    }
}

print(result)
