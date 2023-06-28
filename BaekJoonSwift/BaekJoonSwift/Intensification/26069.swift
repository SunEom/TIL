// 26069 붙임성 좋은 총총이

var adjList = [String: [String]]()

let n = Int(readLine()!)!
var chongchong = false //총총이 등장했는가
var visited = ["ChongChong":true]
var count = 1

for _ in 0..<n {
    let list = readLine()!.split(separator: " ").map { String($0) }

    if list[0] == "ChongChong" || list[1] == "ChongChong" {
        chongchong = true
    }
    
    if chongchong == false {
        continue
    }
    
    if visited[list[0]] != nil, visited[list[0]]! == true, visited[list[1]] == nil {
        visited[list[1]] = true
        count += 1
    }
    
    if visited[list[1]] != nil, visited[list[1]]! == true, visited[list[0]] == nil {
        visited[list[0]] = true
        count += 1
    }
    
}

print(count)
