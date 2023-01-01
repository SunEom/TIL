//1259 펠린드롬 수

import Foundation

var result = ""

while true {
    var solved = false
    let arr = Array(readLine()!).map { String($0) }
    
    if arr.count == 1 && arr[0] == "0" {
        break
    }
    
    for i in 0..<arr.count/2 {
        if arr[i] != arr[arr.count-1-i] {
            result += "no\n"
            solved = true
            break
        }
    }
    
    if !solved {
        result += "yes\n"
    }
}

print(result)
