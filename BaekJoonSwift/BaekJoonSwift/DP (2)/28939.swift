// 28939 설탕 배달

let n = Int(readLine()!)!

var dp = [-1, -1, -1, 1, -1, 1]

var cnt = 6

while dp.count <= n {
    if dp[cnt-3] == -1 && dp[cnt-5] == -1 {
        dp.append(-1)
    } else {
        if dp[cnt-3] == -1 {
            dp.append(dp[cnt-5]+1)
        } else if dp[cnt-5] == -1 {
            dp.append(dp[cnt-3]+1)
        } else {
            dp.append(min(dp[cnt-3], dp[cnt-5])+1)
        }
        
    }
    
    cnt += 1
}

print(dp[n])
