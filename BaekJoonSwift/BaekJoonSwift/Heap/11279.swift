import Foundation


let N = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<N {
    let temp = Int(readLine()!)!
    
    if temp == 0 {
        if arr.count == 0 {
            print(0)
        } else {
            var maxNum = 0, maxIdx = 0
            
            for i in 0..<arr.count {
                if arr[i] > maxNum{
                    maxNum = arr[i]
                    maxIdx = i
                }
            }
            print(maxNum)
            arr[maxIdx] = 0
        }
    } else {
        arr.append(temp)
    }
}

