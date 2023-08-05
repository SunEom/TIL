// 17202 핸드폰 번호 궁합

let number1 = Array(readLine()!).map { Int(String($0))! }
let number2 = Array(readLine()!).map { Int(String($0))! }

var dp = [[Int]]()

var temp = [Int]()
for i in 0..<number1.count {
    temp.append(number1[i])
    temp.append(number2[i])
}

dp.append(temp)

while dp.last!.count > 2 {
    temp = [Int]()
    let last = dp.last!
    
    for i in stride(from: 0, to: last.count-1, by: 1) {
        temp.append((last[i]+last[i+1])%10)
    }
    dp.append(temp)
}

print(dp.last!.map { String($0)}.joined())
