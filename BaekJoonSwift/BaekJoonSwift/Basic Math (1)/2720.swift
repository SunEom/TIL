// 2720 세탁소 사장 동혁

let n = Int(readLine()!)!
var answer = ""
for _ in 0..<n {
    let num = Int(readLine()!)!
    answer += solve(num) + "\n"
}

print(answer)

func solve(_ num: Int) -> String {
    let arr = [25, 10, 5, 1]
    var temp = num
    var result = ""
    
    for a in arr {
        result += "\(temp/a) "
        temp %= a
    }
    
    return result
}
