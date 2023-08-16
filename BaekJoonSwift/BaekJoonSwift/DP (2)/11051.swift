// 11051 이항 계수2

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]

var dp = [[0],[0,1,1,0]]

while dp.count <= n {
    var temp = [0]
    for i in 0..<dp.last!.count-1 {
        temp.append((dp.last![i] + dp.last![i+1])%10007)
    }
    temp.append(0)
    dp.append(temp)
}

print(dp[n][k+1])
