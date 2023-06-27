// 17103 골드바흐 파티션

let n = Int(readLine()!)!

var list = [Int]()
var result = ""
for _ in 0..<n {
    list.append(Int(readLine()!)!)
}

var primeNumbers = Array(repeating: true, count: list.max()!+1)

primeNumbers[0] = false
primeNumbers[1] = false


for i in 2..<primeNumbers.count {
    if primeNumbers[i] == true {
        var j = i*2
        while j < primeNumbers.count {
            primeNumbers[j] = false
            j += i
        }
    }
}


for num in list {
    var count = 0
    for i in 2...num/2 {
        if primeNumbers[i] && primeNumbers[num-i] {
            count+=1
        }
    }
    result += "\(count)\n"
}

print(result)
