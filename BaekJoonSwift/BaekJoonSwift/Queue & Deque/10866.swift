import Foundation

var deque = [Int]()

let n = Int(readLine()!)!
var result = ""
for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    
    if input[0] == "push_front" {
        deque.insert(Int(input[1])!, at: 0)
    }
    else if input[0] == "push_back" {
        deque.append(Int(input[1])!)
    }
    else if input[0] == "pop_front" {
        if deque.isEmpty {
            result += "-1\n"
        }
        else {
            result += "\(deque.removeFirst())\n"
        }
    }
    else if input[0] == "pop_back" {
        if deque.isEmpty {
            result += "-1\n"
        }
        else {
            result += "\(deque.removeLast())\n"
        }
    }
    else if input[0] == "size" {
        result += "\(deque.count)\n"
    }
    else if input[0] == "empty" {
        if deque.isEmpty {
            result += "1\n"
        }
        else {
            result += "0\n"
        }
    }
    else if input[0] == "front" {
        if deque.isEmpty {
            result += "-1\n"
        }
        else {
            result += "\(deque.first!)\n"
        }
    }
    else if input[0] == "back" {
        if deque.isEmpty {
            result += "-1\n"
        }
        else {
            result += "\(deque.last!)\n"
        }
    }
}
print(result)
