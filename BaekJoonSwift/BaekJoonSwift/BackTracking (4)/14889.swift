var result = Int.max
let n = Int(readLine()!)!
var value = [[Int]]()
var visited = Array(repeating: false, count: n)

for _ in 0..<n {
    value.append(readLine()!.split(separator: " ").map { Int(String($0))!})
}


func bt(depth: Int, idx: Int) {
    if depth == n/2 {
        var t1 = 0
        var t2 = 0
        
        for i in 0..<n {
            for j in 0..<n {
                if visited[i] && visited[j] {
                    t1 += value[i][j]
                }
                
                if !visited[i] && !visited[j] {
                    t2 += value[i][j]
                }
            }
        }
        
        result = min(result, abs(t1-t2))
        
    } else {
        for i in idx..<n {
            if !visited[i] {
                visited[i] = true
                bt(depth: depth+1, idx: i)
                visited[i] = false
            }
            
        }
    }
}

bt(depth: 0, idx: 0)
print(result)
