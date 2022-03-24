import Foundation

let n = Int(readLine()!)!
var arr = [Int]()
var sum = 0
var dict = Dictionary<Int, Int> ()

for _ in 0..<n {
    let temp = Int(readLine()!)!
    arr.append(temp)
    sum += temp
    if dict.keys.contains(temp) {
        dict[temp]! += 1
    } else {
        dict[temp] = 1
    }
}

arr.sort()

var keys = dict.keys.sorted {
    return dict[$0]! > dict[$1]!
}

print(Int((Double(sum)/Double(n)).rounded()))
print(arr[arr.count/2])

var f = keys.filter {
    return dict[keys[0]] == dict[$0]!
}.sorted()

if f.count > 1 {
    print(f[1])
} else {
    print(f[0])
}
print(arr.last! - arr.first!)
