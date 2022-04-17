import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = [[1,1],[1,2,1]]

while arr.count < input[0] {
    var temp = [1]
    let last = arr.last!
    for i in 0..<last.count-1 {
        temp.append((last[i]+last[i+1])%10007)
    }
    temp.append(1)
    arr.append(temp)
}

print(arr[input[0]-1][input[1]])
