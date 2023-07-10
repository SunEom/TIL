// 18310 안테나

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }

arr.sort()

print(arr[(arr.count-1)/2])
