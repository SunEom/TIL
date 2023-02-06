// 1495 기타리스트

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let S = input[1]
let M = input[2]
let volumes = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = Array(repeating: Array(repeating: false, count: M+1), count: N+1) //dp[i][j] = i번 째의 볼륨이 j일 때의 최대 값

dp[0][S] = true;

for i in 1...N {

    for j in 0...M {

        if (!dp[i - 1][j]) {
            continue;
        }

        if (j - volumes[i-1] >= 0) {
            dp[i][j - volumes[i-1]] = true;
        }

        if (j + volumes[i-1] <= M) {
            dp[i][j + volumes[i-1]] = true;
        }

    }

}

var solvable = false
for i in stride(from: M, through: 0, by: -1) {
    if dp[N][i] {
        print(i)
        solvable = true
        break
    }
}

if !solvable {
    print(-1)
}
