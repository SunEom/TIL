// 10845 큐

import Foundation

let N = Int(readLine()!)!
var queue = [Int]()

for _ in 0..<N {
    
    let input = readLine()!.split(separator: " ").map{ String($0) }
    
    switch input[0] {
        case "push":
            queue.append(Int(input[1])!)
        case "pop":
            if queue.count == 0 {
                print(-1)
            } else {
                print(queue.removeFirst())
            }
        case "size":
            print(queue.count)
        case "empty":
            print("\(queue.count == 0 ? 1 : 0)")
        case "front":
            if queue.count == 0 {
                print(-1)
            } else {
                print(queue.first!)
            }
        case "back":
            if queue.count == 0 {
                print(-1)
            } else {
                print(queue.last!)
            }
        default:
            continue
    }
    
}
