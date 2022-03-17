import Foundation

var x = [Int]()
var y = [Int]()

for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    x.append(input[0])
    y.append(input[1])
}

x = x.filter { x.lastIndex(of: $0) == x.firstIndex(of: $0) }
y = y.filter { y.lastIndex(of: $0) == y.firstIndex(of: $0) }

print(x[0], y[0])
