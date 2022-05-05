import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{ Int($0)! }
var result = ""
var stack = [Int]()
var i = 0
stack.append(arr[0])

while true {
    var temp = ""
    
    while stack.count > 0 && stack.last! > arr[i] {
        stack.append(arr[i])
        i += 1
        if i >= arr.count {
            break
        }
    }
    
    if i >= arr.count {
        break
    }

}

print(result)
