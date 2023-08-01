// 2616 소형 기관차

let N = Int(readLine()!)!
let list = readLine()!.split(separator: " " ).map{Int(String($0))!}
let D = Int(readLine()!)!
var dp = Array(repeating:Array(repeating:0,count:3),count:N+1)

var sum = 0
for i in 1...N {
    if i > D {
        sum -= list[i-D-1]
    }
    sum += list[i-1]
    
    if i >= D {
        dp[i][0] = max(dp[i-1][0],sum)
    }
    if i >= 2*D {
        dp[i][1] = max(dp[i-1][1], dp[i-D][0]+sum)
    }
    if i >= 3*D {
        dp[i][2] = max(dp[i-1][2],dp[i-D][1]+sum)
    }
}

print(dp[N].max()!)
