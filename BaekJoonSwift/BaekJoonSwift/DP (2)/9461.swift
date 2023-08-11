// 9461 파도반 수열

let t = Int(readLine()!)!
var dp = [0,1,1,1]
var result = ""

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    while dp.count <= n {
        let lastIndex = dp.count-1
        dp.append(dp[lastIndex-1] + dp[lastIndex-2])
    }
    
    result += "\(dp[n])\n"
}

print(result)


