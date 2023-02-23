// 16234 인구 이동

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], lvalue = input[1], rvalue = input[2]

var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

var visited = Array(repeating: Array(repeating: false, count: n), count: n)

func solve(_ now: (r: Int, c: Int)) -> Bool {
    let direction: [(Int, Int)] = [(1,0),(0,1),(-1,0),(0,-1)]
    visited[now.r][now.c] = true
    var visitList = [now]
    var sum = arr[now.r][now.c]
    var cnt = 1
    
    var queue = [now]
    
    while !queue.isEmpty {
        let (r, c) = queue.removeFirst()
        
        for (dr, dc) in direction {
            let tr = r + dr
            let tc = c + dc
            
            if (0..<n).contains(tr) && (0..<n).contains(tc) && !visited[tr][tc] && (lvalue...rvalue).contains(abs(arr[r][c] - arr[tr][tc])) {
                queue.append((tr,tc))
                visitList.append((tr,tc))
                visited[tr][tc] = true
                cnt += 1
                sum += arr[tr][tc]
            }
            
        }
    }
    
    let average = sum / cnt
    
    for (r, c) in visitList {
        arr[r][c] = average
    }
    return cnt != 1
}

var day = 0
while true {
    visited = Array(repeating: Array(repeating: false, count: n), count: n)
    var check = false
    
    for i in 0..<n {
        for j in 0..<n {
            if !visited[i][j] {
                if solve((i,j)) {
                    check = true
                }
            }
        }
    }
    
    if !check {
        break
    }
    
    day += 1
}

print(day)

