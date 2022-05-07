import Foundation

let c = Int(readLine()!)!
var result = ""
for _ in 0..<c {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var priority = readLine()!.split(separator: " ").map { Int($0)! }
    var count = 0
    var i = input[1]
    while true {
        if priority[i] == -1 {
            break
        }
        
        let max = priority.max()!
        
        if priority[0] >= max {
            priority[0] = -1
            count += 1
        }
        priority.append(priority.removeFirst())
        i = (i - 1 + input[0]) % input[0]
    }
    result += "\(count)\n"
}
print(result)
