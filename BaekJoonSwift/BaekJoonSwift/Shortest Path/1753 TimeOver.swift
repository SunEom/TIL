import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let V = input[0]
let E = input[1]

let R = Int(readLine()!)!

var set = [Int: Bool]()
var visited = [Int: Int]()
var edges = [[Int]]()

for i in 1...V {
    set[i] = false
    visited[i] = -1
}

visited[R] = 0
set[R] = true
for _ in 0..<E {
    edges.append(readLine()!.split(separator: " ").map {Int(String($0))!})
}

edges.sort { $0[2] < $1[2] }

while true {
    var post = -1
    var target = -1
    var minCost = Int.max
    for i in 0..<edges.count {
        if set[edges[i][0]]! && !set[edges[i][1]]! {
            post = edges[i][0]
            target = edges[i][1]
            minCost = edges[i][2]
            break
        }
    }
    
    if post == -1 {
        break
    }
    
    visited[target] = visited[post]! + minCost
    set[target] = true
}

var result = ""

for i in 1...V {
    if visited[i] == -1 {
        result += "INF\n"
    } else {
        result += "\(visited[i]!)\n"
    }
}

print(result)


