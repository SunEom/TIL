import Foundation

let N = Int(readLine()!)!
var result = ""

for _ in 0..<N {
    let l = Int(readLine()!)!
    var visited = Array(repeating: Array(repeating: 0, count: l), count: l)
    let start = readLine()!.split(separator: " ").map { Int(String($0))! }
    let target = readLine()!.split(separator: " ").map { Int(String($0))! }

    if start[0] == target[0] && start[1] == target[1] {
        result += "0\n"
        continue
    }
    
    var queue = [[Int]]()
    var idx = 0
    queue.append(start)
    
    
    while idx < queue.count {
        
        let temp = queue[idx]
        idx += 1
        let r = temp[0]
        let c = temp[1]
        
        if (r+2 < l && c+1 < l) && (visited[r+2][c+1] == 0) {
            queue.append([r+2,c+1])
            visited[r+2][c+1] = visited[r][c] + 1
            if r+2 == target[0] && c+1 == target[1] {
                result += "\(visited[r+2][c+1])\n"
                break
            }
        }
        
        if (r+2 < l && c-1 >= 0) && (visited[r+2][c-1] == 0) {
            queue.append([r+2,c-1])
            visited[r+2][c-1] = visited[r][c] + 1
            if r+2 == target[0] && c-1 == target[1] {
                result += "\(visited[r+2][c-1])\n"
                break
            }
        }
        
        if (r+1 < l && c+2 < l) && (visited[r+1][c+2] == 0) {
            queue.append([r+1,c+2])
            visited[r+1][c+2] = visited[r][c] + 1
            if r+1 == target[0] && c+2 == target[1] {
                result += "\(visited[r+1][c+2])\n"
                break
            }
        }
        
        if (r+1 < l && c-2 >= 0) && (visited[r+1][c-2] == 0) {
            queue.append([r+1,c-2])
            visited[r+1][c-2] = visited[r][c] + 1
            if r+1 == target[0] && c-2 == target[1] {
                result += "\(visited[r+1][c-2])\n"
                break
            }
        }
        
        if (r-2 >= 0 && c+1 < l) && (visited[r-2][c+1] == 0) {
            queue.append([r-2,c+1])
            visited[r-2][c+1] = visited[r][c] + 1
            if r-2 == target[0] && c+1 == target[1] {
                result += "\(visited[r-2][c+1])\n"
                break
            }
        }
        
        if (r-2 >= 0 && c-1 >= 0) && (visited[r-2][c-1] == 0) {
            queue.append([r-2,c-1])
            visited[r-2][c-1] = visited[r][c] + 1
            if r-2 == target[0] && c-1 == target[1] {
                result += "\(visited[r-2][c-1])\n"
                break
            }
        }
        
        if (r-1 >= 0 && c+2 < l) && (visited[r-1][c+2] == 0) {
            queue.append([r-1,c+2])
            visited[r-1][c+2] = visited[r][c] + 1
            if r-1 == target[0] && c+2 == target[1] {
                result += "\(visited[r-1][c+2])\n"
                break
            }
        }
        
        if (r-1 >= 0 && c-2 >= 0) && (visited[r-1][c-2] == 0) {
            queue.append([r-1,c-2])
            visited[r-1][c-2] = visited[r][c] + 1
            if r-1 == target[0] && c-2 == target[1] {
                result += "\(visited[r-1][c-2])\n"
                break
            }
        }
    }
    
}

print(result)
