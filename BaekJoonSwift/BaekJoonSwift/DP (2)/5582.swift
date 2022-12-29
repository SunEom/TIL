// 5582 공통 부분 문자열

let str1 = [""] + readLine()!.map{String($0)}
let str2 = [""] + readLine()!.map{String($0)}

var dp = Array(repeating: Array(repeating: 0, count: str1.count+1), count: str2.count+1)
var result = 0

for i in 1..<str2.count {
    for j in 1..<str1.count {
        if str1[j] == str2[i] {
            dp[i][j] = dp[i-1][j-1]+1
            result = max(result, dp[i][j])
        }
    }
}

print(result)
