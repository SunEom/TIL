import Foundation

let n = Int(readLine()!)!
var result = ""

for _ in 0..<n {
    var reversed = false
    let operation = Array(readLine()!)
    let len = Int(readLine()!)!
    var temp = readLine()!
    temp.removeLast()
    temp.removeFirst()
    var arr = temp.split(separator: ",").map { Int($0)! }
    let numOfD = operation.filter{ $0 == "D"}.count
    var front = 0
    var rear = len
    
    if numOfD > len {
        result += "error\n"
    }
    else {
        for o in operation {
            if o == "D" {
                if !reversed {
                    front += 1
                }
                else {
                    rear -= 1
                }
            }
            else if o == "R" {
                reversed = !reversed
            }
        }
        var t = "["
        if front != rear {
            if !reversed {
                for i in arr[front..<rear-1] {
                    t += "\(i),"
                }
                t+="\(arr[rear-1])"
            }
            else {
                for i in arr[front+1..<rear].reversed() {
                    t += "\(i),"
                }
                t+="\(arr[front])"
            }
        }
        
        result += t+"]\n"
    }
}

print(result)
