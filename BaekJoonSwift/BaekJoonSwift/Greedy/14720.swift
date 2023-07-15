// 14720 우유 축제

let n = Int(readLine()!)!

let list = readLine()!.split(separator: " ").map { Int(String($0))! }

var now = 0
var result = 0

for k in list {
    if k == now {
        result += 1
        now += 1
        now %= 3
    }
}

print(result)
