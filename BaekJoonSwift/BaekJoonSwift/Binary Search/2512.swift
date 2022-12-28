// 2512 예산

import Foundation

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var sum = arr
let maxNum = Int(readLine()!)!

solve()

func solve() {
    
    for i in 1..<sum.count {
        sum[i] += sum[i-1]
    }
    
    if sum.last! <= maxNum {
        print(arr.last!)
    } else {
        var remain = sum.last! - maxNum
        var idx = arr.count-1
        
        while true {
            if idx == 0 {
                break
            }
            
            let gap = arr[idx] - arr[idx-1]
            let temp = Int(ceil(Double(remain)/Double(arr.count-idx)))
            
            if temp < gap {
                print(arr[idx]-temp)
                return
            }
            
            remain -= gap * (arr.count-idx)
            idx -= 1
        }
        
        print(arr[0] - Int(ceil(Double(remain)/Double(arr.count))))
    
        return
    }

}
