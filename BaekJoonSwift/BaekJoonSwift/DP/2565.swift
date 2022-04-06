import Foundation

let n = Int(readLine()!)!
var arr = [[Int]]()
var lis = [Int]()
for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { Int($0)! })
}

arr.sort { $0[0] < $1[0]}

for i in 0..<n {
    lis.append(1)
    for j in 0..<i {
        if arr[i][1] > arr[j][1] && lis[j] >= lis[i] {
            lis[i] = lis[j] + 1
        }
    }
}

print(n - lis.max()!)
