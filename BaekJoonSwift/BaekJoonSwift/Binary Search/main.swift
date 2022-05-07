import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }
let nt = Int(readLine()!)!
let target = readLine()!.split(separator: " ").map { Int($0)! }
var result = ""

arr.sort()

for t in target {
    var isIn = false
    var temp = arr
    
    while temp.count>=1 {
        let c = temp.count
        if temp[c/2] == t {
            isIn = true
            result += "1\n"
            break
        }
        else if temp[c/2] < t {
            if c/2+1 <= c-1 {
                temp = Array(temp[c/2+1...c-1])
            }
            else {
                break
            }
        }
        else {
            if 0 <= c/2-1 {
                temp = Array(temp[0...c/2-1])
            }
            else {
                break
            }
            
        }
    }
    if !isIn {
        result += "0\n"
    }
}

print(result)
