import Foundation

let N = Int(readLine()!)!
var count = 0
var smallMax = Array(repeating: 0, count: N)
var hasToCheck = Array(repeating: true, count: N)
var height = Array(repeating: 0, count: N)

for idx in 0..<N {
    let next = Int(readLine()!)!
    height[idx] = next
    
    for i in 0..<idx {
        if hasToCheck[i] {
            if next <= height[i], smallMax[i] <= next {
                count += 1
                smallMax[i] = next
            } else if next > height[i] {
                count += 1
                hasToCheck[i] = false
            }
        }
        
    }
}
print(count)
