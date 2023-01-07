// 16953 A -> B

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var A = input[0]
var B = input[1]

var cnt = 1

while A < B {
    if B % 2 == 0 {
        B /= 2
    }
    else if B%10 == 1 {
        B /= 10
    }
    else {
        break
    }
    cnt += 1
}

if A == B {
    print(cnt)
} else {
    print(-1)
}
