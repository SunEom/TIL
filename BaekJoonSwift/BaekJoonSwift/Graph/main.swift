//import Foundation
//
//var edges = Array(repeating: [Int](), count: 101)
//var visited = Array(repeating: 0, count: 101)
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//for _ in 0..<input[0]+input[1] {
//    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
//    edges[temp[0]].append(temp[1])
//}
//
//for i in 1...100 {
//    if edges[i].count == 0 {
//        for j in 1...6 {
//            if i+j <= 100 {
//                edges[i].append(i+j)
//            }
//        }
//    }
//}
//
//func bfs() {
//    var queue = [1]
//    var idx = 0
//    visited[1] = 0
//
//    while idx < queue.count {
//
//        let t = queue[idx]
//        idx += 1
//        for v in edges[t] {
//            if visited[v] == 0 {
//                var temp = v
//                while edges[temp].count == 1 && visited[temp] == 0 {
//                    temp = edges[temp][0]
//                }
//
//
//                if visited[temp] == 0 {
//                    queue.append(temp)
//                    visited[temp] = visited[t] + 1
//                }
//
//
//                if visited[100] != 0 {
//                    print(visited[100])
//                    return
//                }
//
//            }
//        }
//        print(idx, queue, visited)
//    }
//
//}
//
//
//bfs()
//
//print(visited)

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let N = input[0]
let M = input[1]

var arr = [[Int]]()
for _ in 0..<N+M{
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}


func bfs(){
    var visited = Array(repeating: false, count: 101)
    var queue = [(Int, Int)]()
        
    queue.append((1, 0))
    visited[1] = true
    
    var idx = 0
    while queue.count > idx{
        let temp = queue[idx]
        idx += 1
        var now = temp.0
        
        if now == 100{
            print(temp.1)
            break
        }
        
        for edge in arr {
            if edge[0] == temp.0{
                now = edge[1]
            }
        }
        
        for dice in 1...6{
            let moved = now + dice
            if moved > 100 || visited[moved] {
                continue
            }
            queue.append((moved, temp.1 + 1))
            visited[moved] = true
        }
        
    }
}
                    
bfs()
