// 15489 파스칼 삼각형

let rcw = readLine()!.split(separator: " ").map { Int(String($0))! }
let r = rcw[0], c = rcw[1], w = rcw[2]

var dp = [[],[1],[1,1],[1,2,1]]
var result = 0

while dp.count < r+w {
    var temp = [1]
    let last = dp.last!
    
    for i in 0..<last.count-1 {
        temp.append(last[i]+last[i+1])
    }
    
    temp.append(1)
    
    dp.append(temp)
}


for i in r..<r+w {
    for j in c-1...c-1+(i-r) {
        result += dp[i][j]
    }
}

print(result)
