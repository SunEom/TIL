import Foundation


let N = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<N {
    let temp = Int(readLine()!)!
    
    if temp == 0 {
        if arr.count == 0 {
            print(0)
        } else {
            var minNum = Int.max, minIdx = 0
            
            for i in 0..<arr.count {
                if arr[i] < minNum{
                    minNum = arr[i]
                    minIdx = i
                }
            }
            if minNum == Int.max  {
                print(0)
            } else {
                print(minNum)
            }
            
            arr[minIdx] = Int.max
        }
    } else {
        arr.append(temp)
    }
}

