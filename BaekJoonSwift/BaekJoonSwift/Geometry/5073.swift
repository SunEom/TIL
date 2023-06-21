// 5073 삼각형과 세 변

var result = ""
while true {
    var list = readLine()!.split(separator: " ").map { Int(String($0))! }
    if list[0] == 0 && list[1] == 0 && list[2] == 0 {
        break
    }
    
    list.sort()
    
    if list[0] + list[1] <= list[2] {
       result += "Invalid\n"
    } else if list[0] == list[1] && list[1] == list[2] {
        result += "Equilateral\n"
    } else if list[0] == list[1] || list[1] == list[2] || list[2] == list[0] {
        result += "Isosceles\n"
    } else if list[0] != list[1] && list[1] != list[2] && list[2] != list[0] {
        result += "Scalene\n"
    }
    
}

print(result)
