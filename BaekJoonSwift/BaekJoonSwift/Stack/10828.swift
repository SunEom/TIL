import Foundation

var stack = [Int]()

let n = Int(readLine()!)!

for _ in 0..<n {
    let temp = readLine()!.split(separator: " ")
    if temp[0] == "push" {
        stack.append(Int(temp[1])!)
    }
    else if temp[0] == "size" {
        print(stack.count)
    }
    else if temp[0] == "top" {
        if stack.count == 0 {
            print(-1)
        }
        else {
            print(stack.last!)
        }
    }
    else if temp[0] == "pop" {
        if stack.count == 0 {
            print(-1)
        }
        else {
            print(stack.last!)
            stack.removeLast()
        }
    }
    else if temp[0] == "empty" {
        if stack.count == 0 {
            print(1)
        }
        else {
            print(0)
        }
    }
}
