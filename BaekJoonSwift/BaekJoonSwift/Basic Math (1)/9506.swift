//9506 약수들의 합
import Foundation

var result = ""

while true {
    let num = Int(readLine()!)!
    if num == -1 {
        break
    }

    let s = Int(sqrt(Double(num)))
    var list = [Int]()

    for n in stride(from: s, to: 0, by: -1) {
        if num % n == 0 {
            list = [n] + list
            if n != num/n {
                list.append(num/n)
            }
        }
    }
    
    let sum = list[0..<list.count-1].reduce(0, { $0 + $1 })
    
    if sum == num {
        var temp = "\(num) = \(list[0]) "
        for n in list[1..<list.count-1] {
            temp += "+ \(n) "
        }
        temp += "\n"
        result += temp
    } else {
        result += "\(num) is NOT perfect.\n"
    }

}

print(result)
