// 10039 평균점수

import Foundation

var result = 0


for _ in 0..<5 {
    let n = Int(readLine()!)!
    result += n > 40 ? n : 40
}

print(result/5)
