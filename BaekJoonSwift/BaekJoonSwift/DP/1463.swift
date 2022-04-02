import Foundation

let n = Int(readLine()!)!
var result = Int.max

func dp(count: Int, num: Int) {
    if num == 1 && count < result {
        result = count
    }
    
    if count >= result {
        return
    }
    
    if num % 3 == 0 {
        dp(count: count+1, num: num/3)
    }
    
    if num % 2 == 0 {
        dp(count: count+1, num: num/2)
    }
    
    dp(count: count+1, num: num-1)
}

dp(count: 0, num: n)

print(result)
