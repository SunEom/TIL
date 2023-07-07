// 2812 크게 만들기

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var remain = input[1]

var stack = [Int]()

var list = Array(readLine()!).map { Int(String($0))! }

for n in list {
    if stack.count == 0 {
        stack.append(n)
    } else {
        while remain > 0 && stack.last != nil && stack.last! < n  {
            stack.removeLast()
            remain -= 1
        }
        stack.append(n)
    }
}

for _ in stride(from: 0, to: remain, by: 1) {
    stack.removeLast()
}

print(stack.map {String($0)}.joined())
