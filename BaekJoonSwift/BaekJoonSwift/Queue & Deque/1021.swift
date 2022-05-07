import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var dequeue = Array(1...input[0])
var target = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0

while !target.isEmpty {
    let t = target.removeFirst()
    if dequeue.firstIndex(of: t)! <= dequeue.count/2 {
        while dequeue[0] != t {
            dequeue.append(dequeue.removeFirst())
            result += 1
        }
        dequeue.removeFirst()
    }
    else {
        while dequeue[0] != t {
            dequeue.insert(dequeue.removeLast(), at: 0)
            result += 1
        }
        dequeue.removeFirst()
    }
}

print(result)
