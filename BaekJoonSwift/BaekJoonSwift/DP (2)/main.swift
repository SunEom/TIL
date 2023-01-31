// 2533 사회망 서비스(SNS)

import Foundation


let N = Int(readLine()!)!
var edges = Array(repeating: [Int](), count: N+1)

for _ in 0..<N-1 {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    edges[temp[0]].append(temp[1])
    edges[temp[1]].append(temp[0])
}

var visit = Array(repeating:false,count:N+1)
var dp = Array(repeating:Array(repeating:0,count:2),count:N+1)

func dfs(_ cur : Int ) {
    visit[cur] = true
    
    dp[cur][0] = 0
    dp[cur][1] = 1
    for next in edges[cur] {
        if visit[next] { continue }
        dfs(next)
        dp[cur][0] += dp[next][1]
        dp[cur][1] += min(dp[next][0],dp[next][1])
    }
}
dfs(1)
print(min(dp[1][0],dp[1][1]))
