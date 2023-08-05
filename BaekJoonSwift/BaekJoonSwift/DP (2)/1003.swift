// 1003 피봔치 함수

let t = Int(readLine()!)!

var dp = [(1,0),(0,1)]

var result = ""

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    while dp.count <= n {
        let a = dp[dp.count-1]
        let b = dp[dp.count-2]
        dp.append((a.0+b.0,a.1+b.1))
    }
    
    result += "\(dp[n].0) \(dp[n].1)\n"
}

print(result)
