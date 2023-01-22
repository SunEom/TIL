// 2776 암기왕

import Foundation

let T = Int(readLine()!)!
var result = ""
for _ in 0..<T {
    let M = Int(readLine()!)!
    let arr1 = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
    let N = Int(readLine()!)!
    let arr2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    
    for n in arr2 {
        result += "\(bs(arr1, n))\n"
    }
}

print(result)

func bs(_ arr: [Int], _ num: Int) -> Int {
    
    var s = 0
    var e = arr.count-1
    
    while s <= e {
        let m = (s+e)/2
        if arr[m] == num {
            return 1
        } else if arr[m] > num {
            e = m-1
        } else {
            s = m+1
        }
    }
    return 0
}
