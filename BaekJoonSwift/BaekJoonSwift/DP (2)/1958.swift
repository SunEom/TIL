// 1958 LCS 3

import Foundation

let str1 = Array(readLine()!)
let str2 = Array(readLine()!)
let str3 = Array(readLine()!)

func solve(_ strA: [Character], _ strB: [Character], strC: [Character]) -> Int {
    
    var table = Array(repeating: Array(repeating: Array(repeating: 0, count: strC.count+1), count: strB.count+1), count: strA.count+1)
    
    for a in 1...strA.count {
        for b in 1...strB.count {
            for c in 1...strC.count {
                if strA[a-1] == strB[b-1], strA[a-1] == strC[c-1] {
                    table[a][b][c] = table[a-1][b-1][c-1]+1
                } else {
                    table[a][b][c] = max(table[a-1][b][c], table[a][b-1][c], table[a][b][c-1])
                }
            }
        }
    }
    
    return table[strA.count][strB.count][strC.count]
}

print(solve(str1, str2, strC: str3))
