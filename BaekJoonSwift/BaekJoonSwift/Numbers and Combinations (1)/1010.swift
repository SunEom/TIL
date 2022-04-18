import Foundation

let n = Int(readLine()!)!
var arr = [[1,1]]
var inputs = [[Int]]()
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    inputs.append(input)
    while arr.count <= input[1] {
        var temp = [1]
        let last = arr.last!
        for i in 0..<last.count-1 {
            temp.append(last[i]+last[i+1])
        }
        temp.append(1)
        arr.append(temp)
    }
}

for a in inputs {
    print(arr[a[1]-1][a[0]])
}
