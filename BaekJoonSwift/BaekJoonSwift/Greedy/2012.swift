// 2012 등수 매기기

let N = Int(readLine()!)!

var list = [Int]()
var result = 0

for _ in 0..<N {
    list.append(Int(readLine()!)!)
}

list.sort()

var i = 0

while i < list.count {
    result += abs((i + 1) - list[i])
    i += 1
}

print(result)
