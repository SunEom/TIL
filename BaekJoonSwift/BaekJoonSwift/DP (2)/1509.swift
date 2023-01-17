//1509 팰린드롬 분할

import Foundation

let str = Array(readLine()!).map { String($0) }
var palindrome = Array(repeating: Array(repeating: -1, count: str.count), count: str.count)

func isPalindrome(_ n: Int) {
    if n > 0 {
        for i in 0..<n {
            palindrome[i][i] = 1
        }
    }
    
    if n > 1 {
        for i in 0..<n-1 {
            if str[i] == str[i+1] {
                palindrome[i][i+1] = 1
            } else {
                palindrome[i][i+1] = 0
            }
        }
    }
    
    if n > 2 {
        for i in 3...n {
            for j in 0..<n - i + 1 {
                if str[j] == str[j+i-1] && palindrome[j+1][j+i-2] == 1 {
                    palindrome[j][j+i-1] = 1
                } else {
                    palindrome[j][j+i-1] = 0
                }
            }
        }
    }
}

func solve(_ n : Int) {
    var dp = Array(repeating: 0, count: n)
    for i in 0..<n {
        for j in 0...i {
            if j == 0 {
                if palindrome[j][i] == 1 {
                    dp[i] = 1
                    break
                }
            } else {
                if palindrome[j][i] == 1 {
                    dp[i] = dp[i] == 0 ? dp[j-1]+1 : min(dp[i], dp[j-1]+1)
                }
            }
            
        }
    }
    print(dp.last!)
}

isPalindrome(str.count)
solve(str.count)
