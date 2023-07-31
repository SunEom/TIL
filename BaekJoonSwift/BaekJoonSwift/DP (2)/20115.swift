// 20115 에너지 드링크

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

var result = Double(arr.last!)

for i in 0..<arr.count-1 {
    result += Double(arr[i])/2.0
}

print(result)
