// 2828 사과게임

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let N = Int(readLine()!)!

var list = [Int]()

for _ in 0..<N {
    list.append(Int(readLine()!)!)
}

var currentLeft = 1
var currentRight = input[1]
var result = 0

for n in list {
    if (currentLeft...currentRight).contains(n) {
        continue
    } else {
        if currentLeft > n {
            let diff = currentLeft - n
            result += diff
            currentRight -= diff
            currentLeft -= diff
        } else {
            let diff = n - currentRight
            result += diff
            currentLeft += diff
            currentRight += diff
        }
    }
}

print(result)
