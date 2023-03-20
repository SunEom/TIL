// 19532 수학은 비대면 강의입니다.

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }


func solve() {
    for x in -999...999 {
        for y in -999...999 {
            if input[0]*x + input[1]*y == input[2] && input[3]*x + input[4]*y == input[5] {
                print(x, y)
                return
            }
        }
    }
}

solve()

