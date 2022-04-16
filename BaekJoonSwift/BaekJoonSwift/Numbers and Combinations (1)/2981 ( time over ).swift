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

func f(arr : [Int], num: Int) -> Int {
    let temp = arr.map {$0 + num}
    var gcd = getGCD(a: temp[0], b: temp[1])
    if temp.count > 2 {
        for n in temp[2...] {
            gcd = getGCD(a: gcd, b: n)
        }
    }
    return gcd
}

let n = Int(readLine()!)!
var arr = [Int]()
var result = ""
var gcds = [Int]()
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}
arr.sort()

for i in 2..<arr[0] {
    let r = f(arr: arr, num: i)
    if r != 1 {
        gcds.append(r)
    }
}
gcds.sort()
print(gcds.map{ String($0) }.joined(separator: " "))
