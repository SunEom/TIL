//14916 거스름돈

import Foundation

let n = Int(readLine()!)!

var num2 = 0
var num5 = 0

while n - (num2*2) >= 0 && (n - (num2*2)) % 5 != 0 {
    num2 += 1
}

if n - (num2*2) >= 0 {
    num5 = (n - (num2*2)) / 5
    print(num2+num5)
} else {
    print(-1)
}



