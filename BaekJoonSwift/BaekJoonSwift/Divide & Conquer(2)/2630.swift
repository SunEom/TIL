// 2630 색종이 만들기

import Foundation

let N = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<N {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

func solve(_ sr: Int, _ er: Int, _ sc: Int, _ ec: Int) -> (white: Int, blue: Int) {
    var result : (white: Int, blue: Int) = (0, 0)
    
    for r in sr...er {
        for c in sc...ec {
            if arr[r][c] != arr[sr][sc] {
                let r1 = solve(sr, (sr+er)/2, sc, (sc+ec)/2)
                let r2 = solve(sr, (sr+er)/2, (sc+ec)/2+1, ec)
                let r3 = solve((sr+er)/2+1, er, sc, (sc+ec)/2)
                let r4 = solve((sr+er)/2+1, er, (sc+ec)/2+1, ec)
                result.white = r1.white + r2.white + r3.white + r4.white
                result.blue = r1.blue + r2.blue + r3.blue + r4.blue
                return result
            }
        }
    }
    
    if arr[sr][sc] == 0 {
        result.white = 1
    } else if arr[sr][sc] == 1 {
        result.blue = 1
    }
    
    return result
}

let result = solve(0, N-1, 0, N-1)

print(result.white)
print(result.blue)

