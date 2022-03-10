import Foundation

var a: Int, b: Int, c: Int
var product: Int
var arr = [0,0,0,0,0,0,0,0,0,0]

a = Int(readLine()!)!
b = Int(readLine()!)!
c = Int(readLine()!)!

product = a*b*c

while product != 0 {
    arr[product%10]+=1
    product/=10
}

for n in arr {
    print(n)
}
