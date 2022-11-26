// 에라토스테네스의 체

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var arr = Array(repeating: true, count: input[0]+1)
var removeCount = 0

func solution() {
    for i in 2...input[0] {
        if arr[i] {
            for j in stride(from: i, to: input[0]+1, by: i) {
                if arr[j] {
                    arr[j] = false
                    removeCount += 1
                    if removeCount == input[1] {
                        print(j)
                        return
                    }
                }
                
            }
        }
    }
}

solution()
