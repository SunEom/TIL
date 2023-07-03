// 2217 로프

let n = Int(readLine()!)!

var lopes = [Int]()
var result = [Int]()

for _ in 0..<n {
    lopes.append(Int(readLine()!)!)
}

lopes.sort(by: >)

result.append(lopes[0])

for i in 1..<lopes.count {
    result.append(lopes[i]*(i+1))
}

print(result.max()!)
