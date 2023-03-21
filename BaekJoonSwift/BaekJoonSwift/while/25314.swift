// 25314 코딩은 체육과목 입니다

import Foundation

let num = Int(readLine()!)!

var result = ""

for _ in 0..<num/4 {
    result += "long "
}

print(result + "int")
