// 9252 LCS 2

import Foundation

let s1 = [""] + Array(readLine()!).map { String($0) }
let s2 = [""] + Array(readLine()!).map { String($0) }

var dp = Array(repeating: Array(repeating: 0, count: s2.count), count: s1.count) // prev, char, length

for i in 1..<s1.count {
    for j in 1..<s2.count {
        if s1[i] == s2[j] {
            dp[i][j] = dp[i-1][j-1] + 1
        } else {
            dp[i][j] = max(dp[i][j-1] ,dp[i-1][j])
        }
    }
}

func backtracking(_ r: Int, _ c: Int) -> String {
    if dp[r][c] == 0 {
        return ""
    } else if s1[r] == s2[c] {
        return backtracking(r-1, c-1) + s1[r]
    } else if dp[r-1][c] > dp[r][c-1] {
        return backtracking(r-1, c)
    } else {
        return backtracking(r, c-1)
    }
}


print(dp.last!.last!)
print(backtracking(s1.count-1, s2.count-1))
