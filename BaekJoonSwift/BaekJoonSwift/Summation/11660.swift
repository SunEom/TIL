import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let count = input[1]

var arr = [[Int]]()
var temp = [Int]()
for _ in 0...n {
    temp.append(0)
}
arr.append(temp)

for _ in 0..<n {
    arr.append([0] + readLine()!.split(separator: " ").map { Int($0)! })
}

var summation = arr

for i in 1...n {
    for j in 1...n {
        summation[i][j] += summation[i][j-1] + summation[i-1][j] - summation[i-1][j-1]
    }
}

for _ in 0..<count {
    let temp = readLine()!.split(separator: " ").map{ Int($0)! }
    let x1 = temp[0]
    let y1 = temp[1]
    let x2 = temp[2]
    let y2 = temp[3]
    
    print("\(summation[x2][y2] - summation[x2][y1-1] - summation[x1-1][y2] + summation[x1-1][y1-1])")
}
