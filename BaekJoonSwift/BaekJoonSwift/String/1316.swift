import Foundation

let count = Int(readLine()!)!
var result = 0
for _ in 0..<count {
    var arr = [Character]()
    let string = Array(readLine()!)
    var isGroupWord = true
    
    arr.append(string[0])
    
    for c in string {
        if arr[arr.count-1] == c {
            continue
        } else if arr.contains(c) {
            isGroupWord = false
            break
        } else {
            arr.append(c)
        }
    }
    
    if isGroupWord {
        result += 1
    }
}

print(result)
