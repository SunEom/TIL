// 14567 선수과목

var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var list = Array(repeating: [Int](), count: input[0]+1)

var dp = Array(repeating: 0, count: input[0]+1)
for _ in 0..<input[1] {
    var temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    list[temp[1]].append(temp[0])
}

for i in 1...input[0] {
    if list[i].count == 0 {
        dp[i] = 1
    } else {
        for k in list[i] {
            dp[i] = max(dp[i], dp[k]+1)
        }
    }
}

print(dp[1...].map { String($0)}.joined(separator: " "))
