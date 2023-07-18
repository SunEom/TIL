// 14659    한조서열정리하고옴ㅋㅋ

let N = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

var list = [Int]()
var height = arr[0]
var count = 0

for i in 1..<arr.count {
    if arr[i] < height {
        count += 1
    } else {
        height = arr[i]
        list.append(count)
        count = 0
    }
}

list.append(count)
print(list.max()!)
