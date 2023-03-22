// 10988 펠린드롬인지 확인하기

import Foundation

let str = Array(readLine()!)

var left = 0
var right = str.count-1

var result = 1
while left < right {
    if str[left] != str[right] {
        result = 0
        break
    }
    
    left += 1
    right -= 1
}
print(result)
