// 특정한 최단 경로

func dijkstra(start: Int) -> [Int] {
    var distance = Array(repeating: 9999999999, count: N+1)
    distance[start] = 0
    
    var queue = [start]
    
    while !queue.isEmpty {
        queue.sort()
        let v = queue.removeFirst()
        
        for e in edges[v] {
            if distance[e.0] > distance[v] + e.1 {
                distance[e.0] = distance[v] + e.1
                queue.append(e.0)
            }
        }
        
    }
    
    return distance
}


let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

let N = input[0]
let M = input[1]
var edges = Array(repeating: [(Int, Int)]() , count: N+1)

for _ in 0..<M {
    let t = readLine()!.split(separator: " ").map { Int(String($0))! }
    edges[t[0]].append((t[1], t[2]))
    edges[t[1]].append((t[0], t[2]))
}

var targets = readLine()!.split(separator: " ").map { Int(String($0))! }

let d1 = dijkstra(start: 1)
let d2 = dijkstra(start: targets[0])
let d3 = dijkstra(start: targets[1])

let result = min(d1[targets[0]] + d2[targets[1]] + d3[N], d1[targets[1]] + d3[targets[0]] + d2[N])

print(result >= 9999999999 ? -1 : result)
