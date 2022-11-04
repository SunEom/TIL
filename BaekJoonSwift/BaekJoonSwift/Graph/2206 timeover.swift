// 벽 부수고 이동하기

import Foundation

let command = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = command[0]
let m = command[1]
var matrix = [[Int]]()
var result = Int.max


for _ in 0..<n {
    matrix.append(Array(readLine()!.map { String($0)}).map { Int($0)! })
}

func travel(start : (x: Int, y: Int), visited: [[Int]: Bool], useBreak: Bool, distance: Int) {
    let x = start.x
    let y = start.y
    
    var tVisited = visited
    tVisited[[x,y]] = true
    
    if x == n-1 && y == m-1 {
        if distance + 1 < result {
            result = distance + 1
        }
        return
    }
    
    if x-1 >= 0 {
        if visited[[x-1, y]] == nil {
            if matrix[x-1][y] == 0 {
                travel(start: (x-1, y), visited: tVisited, useBreak: useBreak, distance: distance+1)
            }
            else if !useBreak {
                travel(start: (x-1, y), visited: tVisited, useBreak: true, distance: distance+1)
            }
        }
    }
    
    if x+1 < n {
        if visited[[x+1, y]] == nil {
            if matrix[x+1][y] == 0 {
                travel(start: (x+1, y), visited: tVisited, useBreak: useBreak, distance: distance+1)
            }
            else if !useBreak {
                travel(start: (x+1, y), visited: tVisited, useBreak: true, distance: distance+1)
            }
        }
    }
    
    if y-1 >= 0 {
        if visited[[x, y-1]] == nil {
            if matrix[x][y-1] == 0 {
                travel(start: (x, y-1), visited: tVisited, useBreak: useBreak, distance: distance+1)
            }
            else if !useBreak {
                travel(start: (x, y-1), visited: tVisited, useBreak: true, distance: distance+1)
            }
        }
    }
    
    if y+1 < m {
        if visited[[x, y+1]] == nil {
            if matrix[x][y+1] == 0 {
                travel(start: (x, y+1), visited: tVisited, useBreak: useBreak, distance: distance+1)
            }
            else if !useBreak {
                travel(start: (x, y+1), visited: tVisited, useBreak: true, distance: distance+1)
            }
        }
    }
}


travel(start: (0, 0), visited: [[Int]: Bool](), useBreak: false, distance: 0)

print(result == Int.max ? -1 : result)
