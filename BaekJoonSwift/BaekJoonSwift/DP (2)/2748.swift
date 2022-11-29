// 피보나치 수 2

import Foundation

var fibo = [0, 1]

let n = Int(readLine()!)!

while fibo.count < n+1 {
    fibo.append(fibo[fibo.count-1] + fibo[fibo.count-2])
}

print(fibo[n])
