import Foundation

func hanoi(from: Int, temp: Int, to: Int, num: Int) {
    if num == 1 {
        print("\(from) \(to)")
    } else {
        hanoi(from: from, temp: to, to: temp, num: num-1)
        print("\(from) \(to)")
        hanoi(from: temp, temp: from, to: to, num: num-1)
    }
}

let num = Int(readLine()!)!
var result = 1

for _ in 0..<num {
    result *= 2
}
print(result-1)
hanoi(from: 1, temp: 2, to: 3, num: num)
