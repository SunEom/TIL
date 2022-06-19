import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let M = input[0]
let N = input[1]
let H = input[2]
var raw = M*N*H

var dict = [[Int]: Int]()

var queue = [[Int]]()

var box = [[[Int]]]()
for h in 0..<H {
    var temp = [[Int]]()
    for n in 0..<N {
        let t = readLine()!.split(separator: " ").map { Int(String($0))! }
        for m in 0..<M {
            if t[m] == 1 {
                raw -= 1
                queue.append([h,n,m])
                dict[[h,n,m]] = 0
            }
            if t[m] == -1 {
                raw -= 1
            }
        }
        temp.append(t)
    }
    box.append(temp)
}

if raw == 0 {
    print(0)
} else {
    var idx = 0
    while idx < queue.count {
        let temp = queue[idx]
        idx += 1
        
        let h = temp[0]
        let n = temp[1]
        let m = temp[2]
        
        if (n + 1 < N) && (box[h][n+1][m] == 0) {
            queue.append([h, n+1, m])
            dict[[h,n+1,m]] = dict[[h,n,m]]! + 1
            box[h][n+1][m] = 1
            raw -= 1
        }
        
        if (n - 1 >= 0) && (box[h][n-1][m] == 0) {
            queue.append([h, n-1, m])
            dict[[h,n-1,m]] = dict[[h,n,m]]! + 1
            box[h][n-1][m] = 1
            raw -= 1
        }
        
        if (m + 1 < M) && (box[h][n][m+1] == 0) {
            queue.append([h, n, m+1])
            dict[[h,n,m+1]] = dict[[h,n,m]]! + 1
            box[h][n][m+1] = 1
            raw -= 1
        }
        
        if (m - 1 >= 0) && (box[h][n][m-1] == 0) {
            queue.append([h, n, m-1])
            dict[[h,n,m-1]] = dict[[h,n,m]]! + 1
            box[h][n][m-1] = 1
            raw -= 1
        }
        
        if (h + 1 < H) && (box[h+1][n][m] == 0) {
            queue.append([h+1, n, m])
            dict[[h+1,n,m]] = dict[[h,n,m]]! + 1
            box[h+1][n][m] = 1
            raw -= 1
        }
        
        if (h - 1 >= 0) && (box[h-1][n][m] == 0) {
            queue.append([h-1, n, m])
            dict[[h-1,n,m]] = dict[[h,n,m]]! + 1
            box[h-1][n][m] = 1
            raw -= 1
        }
    }
    
    if raw != 0 {
        print(-1)
    } else {
        print(dict.values.max()!)
    }
}


