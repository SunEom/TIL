import Foundation

func getGCD(a: Int, b: Int) -> Int{
    var a = a
    var b = b
    while a != 0 && b != 0 {
        if a > b {
            a %= b
        } else {
            b %= a
        }
    }
    return max(a,b)
}

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }
var result = ""


for num in arr[1...]{
    let gcd = getGCD(a: arr[0], b: num)
    result += "\(arr[0]/gcd)/\(num/gcd)\n"
}

print(result)

