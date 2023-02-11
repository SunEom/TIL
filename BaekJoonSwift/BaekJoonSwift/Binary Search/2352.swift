// 2352 반도체 설계

import Foundation

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var queue = [arr[0]]

for i in 1..<arr.count {
    if queue.last! <= arr[i] {
        queue.append(arr[i])
    } else {
        for j in 0..<queue.count {
            if queue[j] >= arr[i] {
                queue[j] = arr[i]
                break
            }
        }
    }
}

print(queue.count)
