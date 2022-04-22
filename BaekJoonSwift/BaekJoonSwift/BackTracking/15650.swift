import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var result = ""
func bt(arr: [Int]) {
    if arr.count == input[1] {
        for n in arr {
            result += "\(n) "
        }
        result += "\n"
    }
    if arr.count == 0{
        for a in 1...input[0] {
            bt(arr: arr+[a])
        }
    } else {
        let last = arr.last!
        if last == input[0] {
            return
        }
        for a in last+1...input[0] {
            bt(arr: arr+[a])
        }
    }
    
}

bt(arr: [])
print(result)
