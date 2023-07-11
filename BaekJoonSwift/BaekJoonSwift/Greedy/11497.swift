// 11497 통나무 건너뛰기

let T = Int(readLine()!)!
var result = ""

for _ in 0..<T {
    let N = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
    var temp = [Int]()
    
    while arr.count > 1 {
        temp = [arr.removeFirst()] + temp
        temp = temp + [arr.removeFirst()]
    }
    
    if arr.count == 1 {
        temp.append(arr.removeLast())
    }
    
    temp.append(temp[0])
    
    var diff = 0
    var i = 1
    
    while i < temp.count {
        if abs(temp[i] - temp [i-1]) > diff {
            diff = abs(temp[i] - temp [i-1])
        }
        i += 1
    }
    
    result += "\(diff)\n"
    
}

print(result)
