// 2468 안전 영역

let N = Int(readLine()!)!
var arr = [[Int]]()
var maxHeight = 0
var result = 1

for _ in 0..<N {
    let t = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(t)
    maxHeight = max(maxHeight, t.max()!)
}

func solve() {
    for h in 1..<maxHeight {
        for r in 0..<N {
            for c in 0..<N {
                if arr[r][c] == h {
                    flood(r, c, h)
                }
            }
        }
        
        result = max(result, bfs())
    }
    print(result)
}

func flood(_ sr: Int, _ sc: Int, _ h: Int) {
    var queue = [(sr, sc)]
    let direction = [(1,0),(0,1),(-1,0),(0,-1)]
    arr[sr][sc] = -1
    
    while queue.count > 0 {
        let t = queue.removeFirst()
        
        for d in direction {
            let r = t.0 + d.0
            let c = t.1 + d.1
            
            if (0..<N).contains(r) && (0..<N).contains(c) && arr[r][c] == h {
                arr[r][c] = -1
                queue.append((r,c))
            }
        }
    }
}

func bfs() -> Int {
    var numOfArea = 0
    var tarr = arr
    
    for r in 0..<N {
        for c in 0..<N {
            if tarr[r][c] != -1 {
                numOfArea += 1
                var queue = [(r,c)]
                let direction = [(1,0),(0,1),(-1,0),(0,-1)]
                
                while queue.count > 0 {
                    let t = queue.removeFirst()
                    
                    for d in direction {
                        let r = t.0 + d.0
                        let c = t.1 + d.1
                        
                        if (0..<N).contains(r) && (0..<N).contains(c) && tarr[r][c] != -1 {
                            tarr[r][c] = -1
                            queue.append((r,c))
                        }
                    }
                }
            }
        }
    }
    
    return numOfArea
}

solve()
