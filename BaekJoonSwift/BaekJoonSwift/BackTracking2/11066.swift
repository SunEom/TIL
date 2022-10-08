import Foundation

var memo: [[Int]]!

func solution() {
    let n = Int(readLine()!)!
    
    var result = ""
    
    for _ in 0..<n {
        
        
        let m = Int(readLine()!)!
        memo = Array(repeating: Array(repeating: 0, count: m+1), count: m+1)
        let temp = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
        var sum = Array(repeating: 0, count: m+1)
        
        for i in 1...m {
            sum[i] = sum[i-1] + temp[i]
        }
        
        dp(m: m, sum: sum)
    
        result += "\(memo[1][m])\n"
    }
    
    print(result)
}

func dp(m: Int, sum:[Int]) {
    for len in 1..<m {
        for s in 1...m-len {
            let e = s+len
            
            memo[s][e] = Int.max
            
            for t in s..<e {
                memo[s][e] = min(memo[s][e], memo[s][t] + memo[t+1][e] + sum[e] - sum[s-1])
            }
        }
    }
}


solution()
