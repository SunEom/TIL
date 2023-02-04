// 1937 욕심쟁이 판다

let N = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<N {
    arr.append(readLine()!.split(separator: " ").map{ Int(String($0))! })
}

var dp = Array(repeating: Array(repeating: 0, count: N), count: N)
var result = 0

func dfs(_ sr: Int, _ sc: Int) -> Int {
    
    if dp[sr][sc] != 0 {
        return dp[sr][sc]
    }
    
    dp[sr][sc] = 1
    
    let direction = [(1,0),(0,1),(-1,0),(0,-1)]
    
    for d in direction {
        let r = sr+d.0
        let c = sc+d.1
        
        if (0..<N).contains(r) && (0..<N).contains(c) {
            if arr[sr][sc] < arr[r][c] {
                dp[sr][sc] = max(dp[sr][sc], 1+dfs(r, c))
            }
        }
    }
    
    return dp[sr][sc]
}

for i in 0..<N {
    for j in 0..<N {
        result = max(result, dfs(i, j))
    }
}

print(result)
