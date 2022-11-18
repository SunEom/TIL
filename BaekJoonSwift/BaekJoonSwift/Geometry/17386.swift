// 선분 교차 1

import Foundation

func ccw(_ x1: Int,_ y1: Int,_ x2: Int,_ y2: Int,_ x3: Int,_ y3: Int) -> Int {
    if ((x1*y2+x2*y3+x3*y1) - (y1*x2+y2*x3+y3*x1)) < 0 {
        return -1
    } else {
        return 1
    }
}

let input1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let input2 = readLine()!.split(separator: " ").map { Int(String($0))! }

let x1 = input1[0], y1 = input1[1], x2 = input1[2], y2 = input1[3]
let x3 = input2[0], y3 = input2[1], x4 = input2[2], y4 = input2[3]

let a123 = ccw(x1, y1, x2, y2, x3, y3)
let a124 = ccw(x1, y1, x2, y2, x4, y4)
let a341 = ccw(x3, y3, x4, y4, x1, y1)
let a342 = ccw(x3, y3, x4, y4, x2, y2)

if a123*a124 < 0 && a341*a342 < 0 {
    print(1)
} else {
    print(0)
}

