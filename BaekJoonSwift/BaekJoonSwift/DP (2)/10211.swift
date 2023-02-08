// nmm Maximum SubArray

let T = Int(readLine()!)!
var str = ""

for _ in 0..<T {
    let N = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    var temp = [arr[0]]
    
    for i in 1..<N {
        temp.append(max(arr[i], temp[i-1]+arr[i]))
    }
    
    var result = Int.min
    for n in temp {
        result = max(n, result)
    }
    str += "\(result)\n"
}

print(str)
