import Foundation

let n = Int(readLine()!)!
var i = 1
var result = ""
var stack = [Int]()
var passed = true
for _ in 0..<n {
    let temp = Int(readLine()!)!
    
    while i < temp {
        stack.append(i)
        result += "+\n"
        i+=1
    }
    
    if i == temp {
        stack.append(i)
        result += "+\n"
        i+=1
        stack.removeLast()
        result += "-\n"
    }
    else if i > temp {
        if stack.removeLast() != temp {
            print("NO")
            passed = false
            break
        }
        else {
            result += "-\n"
        }
    }
}

if passed {
    print(result)
}
