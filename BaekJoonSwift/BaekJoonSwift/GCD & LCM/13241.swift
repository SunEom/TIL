// 13241 최소공배수

let list = readLine()!.split(separator: " ").map { Int(String($0))! }

var a = list[0]
var b = list[1]
var gcd = list.min()!

while true {
    if (a == 1 || b == 1) || (a > b ? a % b == 0 : b % a == 0) {
        print( a > b ? list[0] * list[1] / b : list[0] * list[1] / a)
        break
    }
    if a > b {
        a %= b
    } else {
        b %= a
    }
}
