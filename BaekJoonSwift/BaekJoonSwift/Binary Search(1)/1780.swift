import Foundation

let n = Int(readLine()!)!
var arr = [[Int]]()
var result = [0,0,0] // -1, 0, 1
for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { Int($0)! })
}

func dq(_ arr : [[Int]], _ rs: Int, _ re: Int, _ cs: Int, _ ce: Int) {
    if rs == re {
        result[arr[rs][cs]+1] += 1
        return
    }
    
    if isAllSame(arr, rs, re, cs, ce) {
        result[arr[rs][cs]+1] += 1
        return
    }
    else {
        let rd1 = (rs*2 + re)/3
        let rd2 = (rs + re*2)/3
        let cd1 = (cs*2 + ce)/3
        let cd2 = (cs + ce*2)/3
        
        dq(arr, rs, rd1, cs, cd1)
        dq(arr, rs, rd1, cd1+1, cd2)
        dq(arr, rs, rd1, cd2+1, ce)
        dq(arr, rd1+1, rd2, cs, cd1)
        dq(arr, rd1+1, rd2, cd1+1, cd2)
        dq(arr, rd1+1, rd2, cd2+1, ce)
        dq(arr, rd2+1, re, cs, cd1)
        dq(arr, rd2+1, re, cd1+1, cd2)
        dq(arr, rd2+1, re, cd2+1, ce)
    }
    
}

func isAllSame(_ arr : [[Int]], _ rs: Int, _ re: Int, _ cs: Int, _ ce: Int) -> Bool {
    for r in rs...re {
        for c in cs...ce {
            if arr[r][c] != arr[rs][cs] {
                return false
            }
        }
    }
    return true
}

dq(arr, 0, n-1, 0, n-1)

for num in result {
    print(num)
}
