// 15904 UCPC는 무엇의 약자일까?

let str = Array(readLine()!)

var ucnt = 0, ccnt = 0, pcnt = 0
var level = 0
for s in str {
    switch level {
        case 0:
            if s == "U" { level += 1}
        case 1, 3:
            if s == "C" { level += 1}
        case 2:
            if s == "P" { level += 1}
        default:
            break
    }
}

if level == 4 {
    print("I love UCPC")
} else {
    print("I hate UCPC")
}
