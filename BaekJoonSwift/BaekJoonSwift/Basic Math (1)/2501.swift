// 2501 약수 구하기
import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let s = Int(sqrt(Double(input[0])))
var list = [Int]()

for n in stride(from: s, to: 0, by: -1) {
    if input[0] % n == 0 {
        list = [n] + list
        if n != input[0]/n {
            list.append(input[0]/n)
        }
    }
}

if list.count < input[1] {
    print(0)
} else {
    print(list[input[1]-1])
}
