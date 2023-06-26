// 4134    다음 소수

import Foundation

let n = UInt64(readLine()!)!
var result = ""

for _ in 0..<n {
    var temp = UInt64(readLine()!)!
    
    if temp == 0 || temp == 1 || temp == 2 {
        result += "2\n"
        continue
    } else if temp == 3{
        result += "3\n"
        continue
    }

    while true {
        var success = false // 약수가 있는가
        
        for i in 2...UInt64(sqrt(Double(temp))) {
            if temp % i == 0 {
                success = true
                break
            }
        }
        
        if !success {
            result += "\(temp)\n"
            break
        }
        temp += 1
    }
}

print(result)
