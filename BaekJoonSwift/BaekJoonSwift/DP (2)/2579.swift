import Foundation

let n = Int(readLine()!)!
var stair = [Int]()

for _ in 0..<n {
    stair.append(Int(readLine()!)!)
}
var cache = stair
if cache.count > 1 {
    cache[1] += cache[0]
    if cache.count > 2 {
        cache[2] += max(stair[0], stair[1])
        for i in 3..<stair.count {
            cache[i] += max(cache[i-2], stair[i-1] + cache[i-3])
        }
    }
}
print(cache.last!)
