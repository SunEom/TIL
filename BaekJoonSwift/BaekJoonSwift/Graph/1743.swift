// 1743 음식물 피하기

let input = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = input[0]
let M = input[1]
let K = input[2]
var result = 0

var arr = Array(repeating: Array(repeating: 0, count: M+1), count: N+1)

for _ in 0..<K {
    let t = readLine()!.split(separator: " ").map {Int(String($0))!}
    arr[t[0]][t[1]] = 1
}

func bfs(_ sr: Int, _ sc: Int) {
    var count = 1
    var queue = [(sr, sc)]
    let direction = [(1,0),(-1,0),(0,-1),(0,1)]
    arr[sr][sc] = -1
    
    while queue.count > 0 {
        let t = queue.removeFirst()
        
        for d in direction {
            let r = t.0 + d.0
            let c = t.1 + d.1
            
            if (1...N).contains(r) && (1...M).contains(c) && arr[r][c] == 1 {
                arr[r][c] = -1
                queue.append((r,c))
                count += 1
            }
        }
    }
    
    result = max(result, count)
    
}

for r in 1...N {
    for c in 1...M {
        if arr[r][c] == 1 {
            bfs(r, c)
        }
    }
}

print(result)
