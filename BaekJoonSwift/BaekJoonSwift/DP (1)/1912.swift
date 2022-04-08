import Foundation

let n = Int(readLine()!)!
var values = readLine()!.split(separator: " ").map { Int($0)! }
var cache = values

for i in 1..<n {
    cache[i] = max(cache[i-1] + values[i], cache[i])
}

print(cache.max()!)
