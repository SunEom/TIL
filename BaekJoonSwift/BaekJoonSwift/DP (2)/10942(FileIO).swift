// 10942 팰린드롬?

let N = Int(readLine()!)!
var isPalin = Array(repeating: Array(repeating: -1, count: N+1), count: N+1)
let arr = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }

func dp(_ s: Int, _ e: Int) -> Int {
    if s == e {
        isPalin[s][e] = 1
        return isPalin[s][e]
    }
    
    if s+1 == e {
        if arr[s] == arr[e] {
            isPalin[s][e] = 1
            return isPalin[s][e]
        } else {
            isPalin[s][e] = 0
            return isPalin[s][e]
        }
    }
    
    if arr[s] != arr[e] {
        isPalin[s][e] = 0
        return isPalin[s][e]
    } else {
        if isPalin[s+1][e-1] != -1 {
            return isPalin[s+1][e-1]
        } else {
            return dp(s+1, e-1)
        }
    }
}

let T = Int(readLine()!)!
var result = ""
for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    result += "\(dp(input[0], input[1]))\n"
}

print(result)
