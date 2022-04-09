import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }
var reversedArr = [Int](arr.reversed())
var cache1 = [Int]()
var cache2 = [Int]()
var result = 0

for i in 0..<arr.count {
    cache1.append(1)
    for j in 0..<i {
        if arr[i] > arr[j] && cache1[i] <= cache1[j] {
            cache1[i] = cache1[j]+1
        }
    }
}

for i in 0..<reversedArr.count {
    cache2.append(1)
    for j in 0..<i {
        if reversedArr[i] > reversedArr[j] && cache2[i] <= cache2[j] {
            cache2[i] = cache2[j]+1
        }
    }
}

cache2 = cache2.reversed()

for i in 0..<n {
    if result < cache1[i] + cache2[i] {
        result = cache1[i] + cache2[i]
    }
}

print(result-1)
