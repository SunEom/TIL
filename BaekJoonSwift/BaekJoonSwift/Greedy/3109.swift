// 3109 빵집

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = 0
var route = [[String]]()
var visited = Array(repeating: Array(repeating: false, count: input[1]), count: input[0])

for _ in 0..<input[0] {
    route.append(Array(readLine()!).map { String($0)} )
}

for r in 0..<input[0] {
    for c in 0..<input[1] {
        if route[r][c] == "x" {
            visited[r][c] = true
        }
    }
}

func dfs(start: (r: Int, c: Int))  -> Bool {
    if start.c == input[1]-1 {
        return true
    } else {
        for (ar,ac) in [(-1, 1), (0,1), (1,1)] {
            let tr = start.r + ar
            let tc = start.c + ac
            
            if (0..<input[0]).contains(tr) && (0..<input[1]).contains(tc) && !visited[tr][tc] {
                visited[tr][tc] = true
                if dfs(start: (tr,tc)) == true {
                    return true
                }
            }
        }
        return false
    }

}

for i in 0..<input[0] {
    if dfs(start: (i,0)) {
        result += 1
    }
}

print(result)
