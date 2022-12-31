// 2920 음계

import Foundation

let asc = Array(1...8)
let desc = Array(stride(from: 8, to: 0, by: -1))

func solve() {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    for i in 0...7 {
        if input[i] != asc[i] {
            break
        } else if i == 7 {
            print("ascending")
            return
        }
    }
    
    for i in 0...7 {
        if input[i] != desc[i] {
            break
        } else if i == 7 {
            print("descending")
            return
        }
    }
    
    print("mixed")
    return
}

solve()


