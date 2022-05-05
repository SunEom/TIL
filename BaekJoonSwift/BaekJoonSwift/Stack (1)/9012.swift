import Foundation

let n = Int(readLine()!)!


for _ in 0..<n {
    let b = Array(readLine()!)
    var stack = [Character]()
    var passed = true
    for i in b {
        if i == "(" {
            stack.append(i)
        }
        else if  i == ")" {
            if stack.isEmpty || stack.removeLast() != "(" {
                print("NO")
                passed = false
                break
            }
        }
    }
    
    if passed {
        if !stack.isEmpty {
            print("NO")
        } else {
            print("YES")
        }
    }
    
}
