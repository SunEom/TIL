import Foundation

func solution() -> Int {
    var box = [[[Int]]]()
    
    var queue = [(h: Int, n: Int, m: Int, day: Int)]()
    var idx = 0
    
    var maxDay = 0
    
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let M = input[0]
    let N = input[1]
    let H = input[2]
    
    for _ in 0..<H {
        var temp = [[Int]]()
        for _ in 0..<N {
            temp.append(readLine()!.split(separator: " ").map{ Int(String($0))! })
        }
        box.append(temp)
    }
    
    for h in 0..<H {
        for n in 0..<N {
            for m in 0..<M {
                if box[h][n][m] == 1 {
                    queue.append((h,n,m,0))
                }
            }
        }
    }
    
    
    while idx < queue.count {
        let current = queue[idx]
        idx += 1
        
        let adj = [(0,0,1),(0,1,0),(1,0,0),(0,0,-1),(0,-1,0),(-1,0,0)]
        
        for a in adj {
            let tempH = current.h + a.0
            let tempN = current.n + a.1
            let tempM = current.m + a.2
            let tempDay = current.day + 1
            
            if 0 <= tempH && tempH < H && 0 <= tempM && tempM < M && 0 <= tempN && tempN < N && box[tempH][tempN][tempM] == 0 {
                box[tempH][tempN][tempM] = 1
                maxDay = max(maxDay, tempDay)
                queue.append((tempH, tempN, tempM , tempDay))
            }
        }
    }
    
    for h in 0..<H {
        for n in 0..<N {
            for m in 0..<M {
                if box[h][n][m] == 0 {
                    return -1
                }
            }
        }
    }
    
    return maxDay
    
}

print(solution())
