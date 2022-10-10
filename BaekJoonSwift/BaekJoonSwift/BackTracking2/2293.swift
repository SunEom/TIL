import Foundation


func solution() {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    var coin = [Int]()
    var dp = Array(repeating: 0, count: input[1]+1)

    for _ in 0..<input[0] {
        coin.append(Int(readLine()!)!)
    }

    dp[0] = 1

    for c in coin {
        for i in 1...input[1] {
            if i-c >= 0 {
                if dp[i] + dp[i-c] >= Int(pow(2.0, 31.0)) {
                    dp[i] = 0
                }
                dp[i] += dp[i-c]
            }
        }
    }

    print(dp[input[1]])

}

solution()
