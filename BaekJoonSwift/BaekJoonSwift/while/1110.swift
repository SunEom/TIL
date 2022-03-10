import Foundation

var n = Int(readLine()!)!
let original = n
var count = 0
var a: Int, b: Int

repeat {
    a = n / 10
    b = n % 10
    n = (b*10) + ((a+b)%10)
    count += 1
} while n != original

print(count)
