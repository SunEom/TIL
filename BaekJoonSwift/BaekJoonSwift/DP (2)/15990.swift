// 15990 1, 2, 3 더하기 5

let n = Int(readLine()!)!

var dp = [[], [1, 0, 0], [0, 1, 0], [1, 1, 1]]

var k = 4
var result = ""

for _ in 0..<n {
    let t = Int(readLine()!)!
    while dp.count <= t {
        var temp = [Int]()
        
        for i in 0...2 {
            switch i {
                case 0:
                    temp.append((dp[k-1][1] + dp[k-1][2])%1_000_000_009)
                case 1:
                    temp.append((dp[k-2][0] + dp[k-2][2])%1_000_000_009)
                case 2:
                    temp.append((dp[k-3][0] + dp[k-3][1]%1_000_000_009))
                default:
                    continue
            }
        }
        
        k += 1
        dp.append(temp)
    }
    
    result += "\(dp[t].reduce(0, +)%1_000_000_009)\n"
}

print(result)

