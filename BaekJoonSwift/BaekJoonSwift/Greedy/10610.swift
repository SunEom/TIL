// 10610  30

let arr = Array(readLine()!).map { Int(String($0))! }.sorted(by: >)

if arr.last! != 0 {
    print(-1)
} else {
    var sum = 0
    for a in arr {
        sum += a
    }
    if sum % 3 == 0 {
        print(arr.map{ String($0) }.joined())
    } else {
        print(-1)
    }
}



