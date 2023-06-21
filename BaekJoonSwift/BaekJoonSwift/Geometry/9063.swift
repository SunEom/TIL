// 9063 대지

let a = Int(readLine()!)!
var x = [Int]()
var y = [Int]()

for _ in 0..<a {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))!}
    
    x.append(temp[0])
    y.append(temp[1])
}

print((x.max()!-x.min()!)*(y.max()!-y.min()!))
