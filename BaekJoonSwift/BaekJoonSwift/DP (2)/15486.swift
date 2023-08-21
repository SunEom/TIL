// 15486 퇴사 2

let n = Int(readLine()!)!

var dp = Array(repeating: 0, count: n+2)

var task = [(time: Int, price: Int)]()

task.append((0,0))

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    task.append((input[0], input[1]))
}

var maxValue = -1

for i in 1...n {
    if dp[i] > maxValue {
        maxValue = dp[i]
    }
    
    if i + task[i].time <= n+1 {
        dp[i + task[i].time] = max(dp[i + task[i].time], maxValue + task[i].price)
    }
    
}

print(dp.max()!)
