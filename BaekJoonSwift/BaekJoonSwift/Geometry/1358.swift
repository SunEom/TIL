import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let W = input[0]
let H = input[1]
let X = input[2]
let Y = input[3]
let P = input[4]
let R = H/2
var result = 0

func distance(x1 : Int, y1 : Int, x2: Int, y2: Int) -> Double {
    return sqrt(pow(Double(x1-x2),2)+pow(Double(y1-y2), 2))
}

func isIn(x: Int, y : Int) -> Bool {
    return ((X<=x&&x<=(X+W)) && (Y<=y&&y<=(Y+H)))||(distance(x1: x, y1: y, x2: X, y2: Y+R) <= Double(R))||(distance(x1: x, y1: y, x2: X+W, y2: Y+R) <= Double(R))
}

for _ in 0..<P {
    let temp = readLine()!.split(separator: " ").map { Int($0)! }
    let x = temp[0]
    let y = temp[1]
    if isIn(x: x, y: y) {
        result += 1
    }
}
print(result)
