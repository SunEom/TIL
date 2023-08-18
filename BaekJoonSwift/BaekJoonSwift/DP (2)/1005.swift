// 1005 ACM Craft

// FileIO를 이용해야 해결 가능

let T = Int(readLine()!)!
var result = ""

for _ in 0..<T {
    let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = nk[0]
    let k = nk[1]
    
    let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    var dp = arr
    
    var edges = Array(repeating: [Int](), count: n)
    var indegree = Array(repeating: 0, count: n)
    var queue = [Int]()
    
    for _ in 0..<k {
        let temp = readLine()!.split(separator: " ").map { Int(String($0))!-1 }
        indegree[temp[1]] += 1
        edges[temp[0]].append(temp[1])
    }
    
    let target = Int(readLine()!)! - 1
    
    for i in 0..<n {
        if indegree[i] == 0 {
            queue.append(i)
        }
    }
    
    while queue.count != 0 {
        let from = queue.removeFirst()
        for to in edges[from] {
            dp[to] = max(dp[to], dp[from] + arr[to])
            indegree[to] -= 1
            if indegree[to] == 0 {
                queue.append(to)
            }
        }
    }
    result += "\(dp[target])\n"
    
}

print(result)

