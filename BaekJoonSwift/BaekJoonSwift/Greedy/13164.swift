//13164 행복유치원

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let list = readLine()!.split(separator: " ").map { Int(String($0))! }

var diff = [Int]()

for i in 1..<list.count {
    diff.append(list[i]-list[i-1])
}

diff.sort()

print(diff[0..<list.count-input[1]].reduce(0, +))

