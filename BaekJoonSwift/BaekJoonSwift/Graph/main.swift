// 2583 영역구하기

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var arr = Array(repeating: Array(repeating: 0, count: input[1]), count: input[0])
var result = [Int]()

for _ in 0..<input[2]{
    let temp = readLine()!.split(separator: " ").map{Int(String($0))!}
    let r1 = temp[1]
    let c1 = temp[0]
    let r2 = temp[3]-1
    let c2 = temp[2]-1
    
    for r in r1...r2 {
        for c in c1...c2 {
            arr[r][c] = -1
        }
    }
}

for i in 0..<input[0] {
    for j in 0..<input[1] {
        if arr[i][j] == 0 {
            bfs(i,j)
        }
    }
}
print(result.count)
print(result.sorted().map{String($0)}.joined(separator: " "))

func bfs(_ sr: Int, _ sc: Int) {
    var queue = [(sr,sc)]
    var count = 0
    let direction : [(dr : Int, dc : Int)] = [(0,1),(1,0),(-1,0),(0,-1)]
    
    count += 1
    arr[sr][sc] = 1
    
    while queue.count > 0 {
        let (r, c) = queue.removeFirst()
        
        for d in direction {
            let rt = r+d.dr
            let ct = c+d.dc
            
            if (0..<input[0]).contains(rt) && (0..<input[1]).contains(ct) && arr[rt][ct] == 0 {
                queue.append((rt,ct))
                count += 1
                arr[rt][ct] = 1
            }
        }
    }
    
    result.append(count)
}
