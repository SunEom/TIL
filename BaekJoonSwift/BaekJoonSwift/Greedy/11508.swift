// 11508 2+1세일

let n = Int(readLine()!)!
var result = 0
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort(by: >)

var i = 0

while i < arr.count {
    if i % 3 == 2 {
        i += 1
        continue
    }
    
    result += arr[i]
    i += 1
}

print(result)
