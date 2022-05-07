import Foundation

let n = Int(readLine()!)!
var queue = Array(1...n)
var front = 0
var rear = n

while rear - front > 1 {
    front += 1
    if rear - front == 1 {
        break
    }
    queue.append(queue[front])
    front += 1
    rear += 1
}

print(queue[front])
