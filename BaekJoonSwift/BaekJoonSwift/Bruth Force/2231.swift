import Foundation

func constructor(num: Int) -> Int {
    for i in 0..<num {
        var result = i
        var temp = i
        while temp != 0 {
            result += (temp%10)
            temp /= 10
        }
        if result == num {
            return i
        }
    }
    return 0
}

var num = Int(readLine()!)!
print(constructor(num: num))

