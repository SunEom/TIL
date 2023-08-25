// 15312 이름 궁합

let alphabet = ["A":3, "B":2, "C":1, "D":2, "E":3, "F":3, "G":2, "H":3, "I":3, "J":2, "K":2, "L":1, "M":2, "N":2, "O":1, "P":2, "Q":2, "R":2, "S":1, "T":2, "U":1, "V":1, "W":1, "X":2, "Y":2, "Z":1]

let his = Array(readLine()!).map { String($0) }
let her = Array(readLine()!).map { String($0) }
var dp = [[Int]]()

var temp = [Int]()
for i in 0..<his.count {
    temp.append(alphabet[his[i]]!)
    temp.append(alphabet[her[i]]!)
}
dp.append(temp)

while dp.last!.count != 2 {
    let last = dp.last!
    temp = [Int]()
    for i in 0..<last.count-1 {
        temp.append((last[i] + last[i+1]) % 10)
    }
    dp.append(temp)
}

print("\(dp.last![0])\(dp.last![1])")

