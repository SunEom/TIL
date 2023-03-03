// 11721 열 개씩 끊어 출력하기

var str = ""

let string = Array(readLine()!).map { String($0) }
var count = 0

for c in string {
    str += c
    count += 1
    if count == 10 {
        count = 0
        str += "\n"
    }
}

print(str)
