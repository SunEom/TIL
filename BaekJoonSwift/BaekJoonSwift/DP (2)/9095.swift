// 9095 1, 2, 3 더하기

let n = Int(readLine()!)!

var dp = [0, 1, 2, 4]
var input = [Int]()
var result = ""

for _ in 0..<n {
    input.append(Int(readLine()!)!)
}

for a in input {
    while dp.count <= a {
        dp.append(dp[dp.count-1] + dp[dp.count-2] + dp[dp.count-3])
    }

    result += "\(dp[a])\n"
}

print(result)
