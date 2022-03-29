// 시간초과

import Foundation

var result = 0

func removeSpace(n: Int, chess: [[Int]], r: Int, c: Int) -> [[Int]] {
    var temp = chess
    
    // 위 아래 제거
    for i in 0..<n {
        temp[i][c] = -1
    }
    
    // 좌우 제거
    for i in 0..<n {
        temp[r][i] = -1
    }
    
    // 왼쪽위 -> 오른쪽 아래 대각선 제거
    var rtemp = r+1
    var ctemp = c+1
    
    while rtemp < n && ctemp < n {
        temp[rtemp][ctemp] = -1
        rtemp += 1
        ctemp += 1
    }
    
    rtemp = r-1
    ctemp = c-1
    
    while rtemp >= 0 && ctemp >= 0 {
        temp[rtemp][ctemp] = -1
        rtemp -= 1
        ctemp -= 1
    }
    
    // 왼쪽아래 -> 오른쪽 위 대각선 제거
    rtemp = r+1
    ctemp = c-1
    
    while rtemp < n && ctemp >= 0 {
        temp[rtemp][ctemp] = -1
        rtemp += 1
        ctemp -= 1
    }
    
    rtemp = r-1
    ctemp = c+1
    
    while rtemp >= 0 && ctemp < n {
        temp[rtemp][ctemp] = -1
        rtemp -= 1
        ctemp += 1
    }
    
    return temp
}

func bt(n :Int ,chess: [[Int]], lastR: Int, lastC : Int, num: Int) {
    if num == n {
        result += 1
        return
    }
    
    for c in lastC..<n {
        if chess[lastR][c] == 0 {
            var temp = chess
            temp = removeSpace(n: n, chess: temp, r: lastR, c: c)
            temp[lastR][c] = 1
            bt(n: n, chess: temp, lastR: lastR, lastC: c, num: num+1)
        }
    }
    
    var rtemp = lastR + 1
    var ctemp = 0
    
    while rtemp < n {
        ctemp = 0
        while ctemp < n {
            if chess[rtemp][ctemp] == 0 {
                var temp = chess
                temp = removeSpace(n: n, chess: temp, r: rtemp, c: ctemp)
                temp[rtemp][ctemp] = 1
                bt(n: n, chess: temp, lastR: rtemp, lastC: ctemp, num: num+1)
            }
            ctemp += 1
        }
        rtemp += 1
    }
}

let n = Int(readLine()!)!
var chess = [[Int]]()
for _ in 0..<n {
    var temp = [Int]()
    for _ in 0..<n {
        temp.append(0)
    }
    chess.append(temp)
}

bt(n: n, chess: chess, lastR: 0, lastC: 0, num: 0)

print(result)



