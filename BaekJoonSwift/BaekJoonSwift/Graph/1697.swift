import Foundation

var visited = Array(repeating: -1, count: 100001)

func find(n at: Int, target: Int) {
    var queue = [Int]()
    var idx = 0
    visited[at] = 0
    queue.append(at)
    
    while queue.count > idx {
        var temp = queue[idx]
        if temp == target {
            print(visited[temp])
        }
        idx += 1
        
        if temp-1 >= 0 && visited[temp-1] == -1 {
            visited[temp-1] = visited[temp]+1
            queue.append(temp-1)
        }
        
        if temp+1 < 100001 && visited[temp+1] == -1 {
            visited[temp+1] = visited[temp]+1
            queue.append(temp+1)
        }
        
        if temp*2 < 100001 && visited[temp*2] == -1 {
            visited[temp*2] = visited[temp]+1
            queue.append(temp*2)
        }
    }
}

let input = readLine()!.split(separator: " ").map {Int($0)!}
find(n: input[0], target: input[1])
