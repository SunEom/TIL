    // 14502 연구소

    import Foundation

    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let N = input[0]
    let M = input[1]
    var arr = [[Int]]()
    var result = -1

    for _ in 0..<N {
        arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
    }

    func getNumOfSafeArea(_ arr: [[Int]]) -> Int {
        var count = 0
        
        for r in 0..<N {
            for c in 0..<M {
                if arr[r][c] == 0 {
                    count += 1
                }
            }
        }
        
        return count
    }

    func bfs(_ arr: [[Int]], _ sr: Int, _ sc: Int) -> [[Int]] {
        var tarr = arr
        var queue = [(sr, sc)]
        var direction = [(1,0),(0,1),(-1,0),(0,-1)]
        tarr[sr][sc] = 2
        
        while queue.count > 0 {
            var t = queue.removeFirst()
            
            for d in direction {
                let r = t.0+d.0
                let c = t.1+d.1
                
                if (0..<N).contains(r) && (0..<M).contains(c) && tarr[r][c] == 0 {
                    queue.append((r,c))
                    tarr[r][c] = 2
                }
            }
        }
        
        return tarr
    }

    func dp(_ map: [[Int]], _ newWallCount : Int, lastPos: (r:Int, c:Int)) {
        var tmap = map
        
        if newWallCount == 3 {
            for r in 0..<N {
                for c in 0..<M {
                    if tmap[r][c] == 2 {
                        tmap = bfs(tmap, r, c)
                    }
                }
            }
            
            result = max(result, getNumOfSafeArea(tmap))
            return
        }
        
        for r in lastPos.r..<N {
            for c in 0..<M {
                if r == lastPos.r && c < lastPos.c {
                    continue
                } else if map[r][c] == 0 {
                    tmap = map
                    tmap[r][c] = 1
                    dp(tmap, newWallCount+1, lastPos: (r, c))
                }
            }
        }
        
    }

    dp(arr, 0, lastPos: (0,0))

    print(result)
