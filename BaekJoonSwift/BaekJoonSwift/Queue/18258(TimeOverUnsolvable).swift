import Foundation

var queue = [Int]()
var str = ""
var front = 0
var rear = 0

let n = Int(readLine()!)!

for _ in 0..<n {
    let temp = readLine()!.split(separator: " ")
    
    switch temp[0] {
    case "push":
        queue.append(Int(temp[1])!)
        rear += 1
        
    case "pop":
        if front == rear {
            str += "-1\n"
        }
        else {
            str += "\(queue[front])\n"
            front += 1
        }
        
    case "size":
        str += "\(rear-front) "
        
    case "empty":
        if front == rear {
            str += "1\n"
        }
        else {
            str += "0\n"
        }
        
    case "front":
        if front == rear {
            str += "-1\n"
        }
        else {
            str += "\(queue[front])\n"
        }
        
    case "back":
        if queue.isEmpty {
            str += "-1\n"
        }
        else {
            str += "\(queue[rear-1])\n"
        }
        
    default:
        continue
    }
}

print(str)
