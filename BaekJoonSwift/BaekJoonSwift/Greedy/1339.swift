// 1339 수학

let N = Int(readLine()!)!
var result = 0
var dict = [String: Int]()

for _ in 0..<N {
    let temp = Array(readLine()!.map { String($0) }.reversed())
    
    var t = 1
    for i in 0..<temp.count {
        if dict[temp[i]] == nil {
          dict[temp[i]] = 0
        }
        dict[temp[i]]! += t
        t *= 10
    }
}

var value = 9
for v in dict.values.sorted(by: >) {
    result += v*value
    value -= 1
}

print(result)
