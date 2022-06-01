import Foundation

let N = Int(readLine()!)!
var arr = [[Int]]()
var visited = [[Int]]()
var danzi = [Int]()
var result = ""

for _ in 0..<N {
    arr.append(Array(readLine()!).map{ Int(String($0))! })
    visited.append(Array(repeating: 0, count: N))
}

for i in 0..<N {
    for j in 0..<N {
        if arr[i][j] == 1 && visited[i][j] != 1 {
            bfs(r: i, c: j)
        }
    }
}


func bfs(r: Int, c: Int) {
    var count = 0
    var queue = [[Int]]()
    visited[r][c] = 1
    queue.append([r,c])
    count += 1
    
    while !queue.isEmpty {
        let temp = queue.removeFirst()
        let row = temp[0]
        let col = temp[1]
        
        if row-1 >= 0 && visited[row-1][col] == 0 && arr[row-1][col] == 1 {
            queue.append([row-1,col])
            visited[row-1][col] = 1
            count += 1
        }
        if col-1 >= 0 && visited[row][col-1] == 0 && arr[row][col-1] == 1 {
            queue.append([row,col-1])
            visited[row][col-1] = 1
            count += 1
        }
        if row+1 < N && visited[row+1][col] == 0 && arr[row+1][col] == 1 {
            queue.append([row+1,col])
            visited[row+1][col] = 1
            count += 1
        }
        if col+1 < N && visited[row][col+1] == 0 && arr[row][col+1] == 1 {
            queue.append([row,col+1])
            visited[row][col+1] = 1
            count += 1
        }
    }
    danzi.append(count)
}

danzi.sort()

result += "\(danzi.count)\n"

for i in danzi {
    result += "\(i)\n"
}

print(result)
