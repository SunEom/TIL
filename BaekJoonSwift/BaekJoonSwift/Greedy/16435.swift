// 16435 스네이크버드

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let fruits = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

var height = input[1]
for fruit in fruits {
    if fruit <= height {
        height += 1
    }
}

print(height)

