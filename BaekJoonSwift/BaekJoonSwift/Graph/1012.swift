import Foundation

let T = Int(readLine()!)!
var arr = [[Int]]()
var visited = [[Int]]()
var count = 0

func bfs (M :Int, N: Int, row: Int, col: Int) {
    var queue = [[Int]]()
    queue.append([row, col])
    visited[row][col] = 1
    
    while !queue.isEmpty {
        let temp = queue.removeFirst()
        let r = temp[0]
        let c = temp[1]
        
        if r-1 >= 0 && visited[r-1][c] == 0 && arr[r-1][c] == 1 {
            queue.append([r-1,c])
            visited[r-1][c] = 1
        }
        if c-1 >= 0 && visited[r][c-1] == 0 && arr[r][c-1] == 1 {
            queue.append([r,c-1])
            visited[r][c-1] = 1
        }
        if r+1 < N && visited[r+1][c] == 0 && arr[r+1][c] == 1 {
            queue.append([r+1,c])
            visited[r+1][c] = 1
        }
        if c+1 < M && visited[r][c+1] == 0 && arr[r][c+1] == 1 {
            queue.append([r,c+1])
            visited[r][c+1] = 1
        }
    }
    count += 1
}

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let M = input[0] // 가로
    let N = input[1] // 세로
    let K = input[2]
    count = 0
    arr = Array(repeating: Array(repeating: 0, count: M), count: N)
    visited = Array(repeating: Array(repeating: 0, count: M), count: N)
    
    for _ in 0..<K {
        let temp = readLine()!.split(separator: " ").map { Int($0)! }
        arr[temp[1]][temp[0]] = 1
    }
    
    for i in 0..<N {
        for j in 0..<M {
            if arr[i][j] == 1 && visited[i][j] == 0 {
                bfs(M: M, N: N, row: i, col: j)
            }
        }
    }
    print(count)
}
