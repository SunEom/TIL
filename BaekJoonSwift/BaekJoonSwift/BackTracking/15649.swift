import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var result = ""
func bt(arr: [Int]) {
    if arr.count == input[1] {
        for a in arr {
            result += "\(a) "
        }
        result += "\n"
        return
    }
    
    for i in 1...input[0] {
        if !arr.contains(i) {
            bt(arr: arr+[i])
        }
    }
}

bt(arr: [])

print(result)
