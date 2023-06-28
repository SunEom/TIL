// 24723 녹색거탑
import Foundation

let n = Int(readLine()!)!

var list = [[1,1]]

while list.count < n {
    var temp = [1]
    for i in 0..<list.last!.count-1 {
        temp.append(list.last![i] + list.last![i+1])
    }
    temp.append(1)
    list.append(temp)
}

print(list.last!.reduce(0, { partialResult, next in
    return partialResult + next
}))
