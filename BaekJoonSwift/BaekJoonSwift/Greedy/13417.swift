// 13417 카드 문자열

let t = Int(readLine()!)!
var answer = ""

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    let str = readLine()!.split(separator: " ").map { String($0) }
    var first = str[0]
    var result = str[0]
    
    for i in 1..<str.count {
        if (Int(UnicodeScalar(first)!.value) >= Int(UnicodeScalar(str[i])!.value)) {
            first = str[i]
            result = first + result
        } else {
            result = result + str[i]
        }
    }
    
    answer += "\(result)\n"
}

print(answer)
