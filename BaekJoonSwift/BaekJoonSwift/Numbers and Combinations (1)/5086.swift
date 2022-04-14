import Foundation

while true {
    let temp = readLine()!.split(separator: " ").map{ Int($0)! }
    if temp[0] == 0 && temp[1] == 0 {
        break
    }
    
    if temp[1] % temp[0] == 0 {
        print("factor")
    }
    else if temp[0] % temp[1] == 0 {
        print("multiple")
    }
    else {
        print("neither")
    }
    
}
