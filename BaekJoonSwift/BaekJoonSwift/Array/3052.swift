import Foundation

var s = Set<Int>()

for _ in 0..<10 {
    s.insert((Int(readLine()!)!)%42)
}

print(s.count)
