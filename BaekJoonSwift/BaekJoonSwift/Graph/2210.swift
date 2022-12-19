// 2210 숫자판 점프

import Foundation

var visited = Array(repeating: Array(repeating: false, count: 5), count: 5)

var arr = [[String]]()
var set = Set<String>();

for _ in 0..<5 {
    arr.append(readLine()!.split(separator: " ").map{String($0)})
}

func dp(_ r: Int, _ c: Int, _ str: String) {
    
    if str.count == 6 {
        set.insert(str)
        return
    }
    let cases = [(1,0),(0,1),(-1,0),(0,-1)]

    for t in cases {
        let rt = r + t.0
        let ct = c + t.1
        
        if rt>=0 && rt<5 && ct>=0 && ct<5 {
            dp(rt, ct, str+arr[rt][ct])
        }
    }

}

for i in 0..<5 {
    for j in 0..<5 {
        dp(i,j,"")
    }
}

print(set.count)
