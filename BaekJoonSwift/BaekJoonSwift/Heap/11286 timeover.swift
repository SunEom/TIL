import Foundation

func solution() {
    let N = Int(readLine()!)!
    var arr = [Int]()
    
    for _ in 0..<N {
        let value = Int(readLine()!)!
        
        if value != 0 {
            arr.append(value)
        } else {
            var minValue = 0
            var minIdx = -1
            
            for i in 0..<arr.count {
                if arr[i] != 0 {
                    if minIdx == -1 {
                        minValue = arr[i]
                        minIdx = i
                    } else if abs(minValue) > abs(arr[i]) {
                        minValue = arr[i]
                        minIdx = i
                    } else if abs(minValue) == abs(arr[i]) {
                        if minValue > arr[i] {
                            minValue = arr[i]
                            minIdx = i
                        }
                    }
                }
            }
            
            if minIdx != -1 {
                arr[minIdx] = 0
            }
            
            
            print(minValue)
        }
    }
}

solution()
