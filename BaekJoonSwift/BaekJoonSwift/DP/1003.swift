import Foundation

var arr = [[1,0],[0,1]]
var string = ""

func fibo(n : Int) {
    if n >= 2 {
        for i in arr.count...n {
            arr.append([arr[i-2][0] + arr[i-1][0], arr[i-2][1] + arr[i-1][1]])
        }
    }
}

let n = Int(readLine()!)!

var input = [Int]()

for _ in 0..<n {
    let num = Int(readLine()!)!
    input.append(num)
}

fibo(n: input.max()!)

for item in input {
    string += "\(arr[item][0]) \(arr[item][1])\n"
}


print(string)
