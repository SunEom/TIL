import Foundation

var result = 0
var arr = [[0,1,1,1,1,1,1,1,1,1]]
let n = Int(readLine()!)!
var len = 1
while arr.count != n {
    var temp = [Int]()
    for i in 0...9 {
        if i == 0 {
            temp.append(arr[len-1][1]%1000000000)
        }
        else if i == 9 {
            temp.append(arr[len-1][8]%1000000000)
        }
        else {
            temp.append(((arr[len-1][i+1])%1000000000+(arr[len-1][i-1])%1000000000)%1000000000)
        }
    }
    len += 1
    arr.append(temp)
}

arr.last?.forEach {
    result += ($0)%1000000000
}

print(result%1000000000)
