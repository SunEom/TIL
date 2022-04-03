import Foundation

let n = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

var mem = arr


if arr.count > 1 {
    mem[1] += mem[0]
    if arr.count > 2 {
        mem[2] += max(arr[0], arr[1])
        if arr.count > 3 {
            mem[3] += max(arr[0], mem[1], arr[0] + arr[2])
            for i in 4..<arr.count {
                
                mem[i] += max(mem[0...i-2].max()!, mem[0...i-3].max()!+arr[i-1])
            }
        }
    }
}
print(mem.max()!)
