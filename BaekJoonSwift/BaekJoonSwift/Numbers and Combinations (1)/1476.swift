// 1476 날짜 계산

var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = input[1]
input[0] %= 15
input[2] %= 19

while true {
    if result % 15 == input[0] && result % 19 == input[2] {
        break
    }
    result += 28
}

print(result)
