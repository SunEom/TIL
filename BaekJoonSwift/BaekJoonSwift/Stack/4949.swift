import Foundation

while true {
    let strArr = Array(readLine()!)
    var stack = [Character]()
    var passed = true
    if strArr.count == 1 && strArr[0] == "." {
        break
    }
    
    for c in strArr {
        if c == "(" || c == "{" || c == "[" {
            stack.append(c)
        }
        else if c == ")" {
            if stack.isEmpty || stack.removeLast() != "(" {
                passed = false
                print("no")
                break
            }
        }
        else if c == "}" {
            if stack.isEmpty || stack.removeLast() != "{" {
                passed = false
                print("no")
                break
            }
        }
        else if c == "]" {
            if stack.isEmpty || stack.removeLast() != "[" {
                passed = false
                print("no")
                break
            }
        }
    }
    
    if passed {
        if stack.count == 0 {
            print("yes")
        } else {
            print("no")
        }
    }
}
