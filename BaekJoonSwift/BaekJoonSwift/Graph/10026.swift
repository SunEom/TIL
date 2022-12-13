// 10026 적록색약

import Foundation

let n = Int(readLine()!)!
var arr = [[Character]]()
var arr2 = [[Character]]()

for _ in 0..<n {
    let temp = Array(readLine()!)
    arr.append(temp)
    arr2.append(temp.map{ $0 == "R" ? "G" : $0 })
}

func travel(_ arr: [[Character]]) -> Int { // 정상
    var queue = [[Int]]()
    var visited = Array(repeating: Array(repeating: false, count: n), count: n)
    var result = 0
    
    for i in 0..<n {
        for j in 0..<n {
            if !visited[i][j] {
                result += 1
                queue.append([i,j])
                
                while queue.count > 0 {
                    let t = queue.removeFirst()
                    let r = t[0]
                    let c = t[1]
                    
                    if r+1 < n && !visited[r+1][c] && arr[r+1][c] == arr[r][c]{
                        queue.append([r+1,c])
                        visited[r+1][c] = true
                    }
                    
                    if r-1 >= 0 && !visited[r-1][c] && arr[r-1][c] == arr[r][c] {
                        queue.append([r-1,c])
                        visited[r-1][c] = true
                    }
                    
                    if c+1 < n && !visited[r][c+1] && arr[r][c+1] == arr[r][c]  {
                        queue.append([r,c+1])
                        visited[r][c+1] = true
                    }
                    
                    if c-1 >= 0 && !visited[r][c-1] && arr[r][c-1] == arr[r][c]  {
                        queue.append([r,c-1])
                        visited[r][c-1] = true
                    }
                    
                }
            }
        }
    }
    
    return result
}

print(travel(arr), travel(arr2))
