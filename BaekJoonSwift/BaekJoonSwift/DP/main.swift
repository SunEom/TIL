import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }
var cache = [Int]()

for i in 0..<n {
    cache.append(1)
    for j in 0..<i {
        if arr[j] < arr[i] && cache[i] <= cache[j] {
            cache[i] = cache[j]+1
        }
    }
}

print(cache.max()!)
