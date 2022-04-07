//시간초과

import Foundation
var temp1 = readLine()!
var temp2 = readLine()!
var str1 = [Character]()
var str2 = [Character]()
if temp1.count < temp2.count {
    str1 = Array(temp1)
    str2 = Array(temp2)
}
else {
    str1 = Array(temp2)
    str2 = Array(temp1)
}
var idx1 = 0
var idx2 = 0
var result = 0

func dp(len1: Int, len2: Int, idx1: Int, idx2: Int, count: Int) {
    for i in idx1..<len1 {
        if str2[idx2..<len2].contains(str1[i]) {
            if result < count+1 {
                result = count+1
            }
            dp(len1: len1, len2: len2, idx1: i+1, idx2: str2[idx2..<len2].firstIndex(of: str1[i])!+1, count: count+1)
        }
    }
}

dp(len1: str1.count, len2: str2.count, idx1: 0, idx2: 0, count:
    0)

print(result)
