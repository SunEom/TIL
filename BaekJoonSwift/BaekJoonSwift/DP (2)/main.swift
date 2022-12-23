//10942 펠린드롬?

import Foundation

let n = Int(readLine()!)!
let list = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = Array(repeating: Array(repeating: -1, count: n+1), count: n+1)

for i in 1...n {
    dp[i][i] = 1
}

let count = Int(readLine()!)!
var result = ""

for _ in 0..<count {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    if dp[input[0]][input[1]] == -1 {
        result += "\(isPalin(input[0], input[1]) ? 1 : 0)\n"
    } else {
        result += "\(dp[input[0]][input[1]])\n"
    }
    
}

print(result)


func isPalin(_ s: Int, _ e: Int) -> Bool {
    
    if dp[s][e] != -1 {
        return dp[s][e] == 1 ? true : false
    }
    
    if list[s] != list[e] {
        dp[s][e] = 0
        return false
    }
    
    
    if s+1<=n && e-1>=0 && s+1 <= e-1 {
        if dp[s+1][e-1] == -1 {
            dp[s+1][e-1] = isPalin(s+1, e-1) ? 1 : 0
        }
        return dp[s+1][e-1] == 1 ? true : false
    } else {
        dp[s][e] = 1
        return true
    }

}
