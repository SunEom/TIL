// Router

import Foundation

let N = Int(readLine()!)!

var buffer = [Int]()

while true {
    let input = Int(readLine()!)!
    
    if input == -1 {
        break
    }
    else if input == 0 {
        buffer.removeFirst()
    } else {
        if buffer.count < N {
            buffer.append(input)
        }
    }
}


if buffer.count > 0 {
    print(buffer.map { String($0) }.joined(separator: "\n"))
} else {
    print("empty")
}
