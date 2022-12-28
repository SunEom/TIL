// 13301 타일 장식물

import Foundation

let N = Int(readLine()!)!
var a: Int64 = 1
var b: Int64 = 1
var count: Int64 = 2
if N == 1 {
    print(4)
} else if N == 2 {
    print(6)
} else {
    while count != N {
        let t = b
        b += a
        a = t
        count += 1
    }
    print(2*(2*b+a))
}
