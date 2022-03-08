import Foundation

var A = Int(readLine()!)!
var B = Int(readLine()!)!
var i = 1
var result = 0

while B != 0 {
    print(A*(B%10))
    result+=i*(A*(B%10))
    B /= 10
    i*=10
}

print(result)
