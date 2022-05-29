import Foundation

let input = readLine()!.split(separator: " ").map {Int($0)!}
var arr = [[Int]]()
var queue = [[Int]]()
var visited = [[Bool]]()

for _ in 0..<input[0] {
    var temp = readLine()!
    var tempArr = Array(temp)
    arr.append(tempArr.map { Int(String($0))! })
    visited.append(Array(repeating: false, count: input[1]))
}

func bfs(row: Int, col: Int) {
    queue.append([row,col,1])
    visited[row][col] = true
    
    while !queue.isEmpty {
        let temp = queue.removeFirst()
        let r = temp[0]
        let c = temp[1]
        let len = temp[2]
        
        if r == input[0]-1 && c == input[1]-1 {
            print(len)
        }
        
        if r-1 >= 0 && !visited[r-1][c] && arr[r-1][c] == 1 {
            visited[r-1][c] = true
            queue.append([r-1,c,len+1])
        }
        
        if r+1 <= input[0]-1 && !visited[r+1][c] && arr[r+1][c] == 1 {
            visited[r+1][c] = true
            queue.append([r+1,c,len+1])
        }
        
        if c-1 >= 0 && !visited[r][c-1] && arr[r][c-1] == 1 {
            visited[r][c-1] = true
            queue.append([r,c-1,len+1])
        }
        
        if c+1 <= input[1]-1 && !visited[r][c+1] && arr[r][c+1] == 1 {
            visited[r][c+1] = true
            queue.append([r,c+1,len+1])
        }
    }
}

bfs(row: 0, col: 0)

