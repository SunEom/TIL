// 1864 5와 6의 차이

let input = readLine()!.split(separator: " ").map { String($0) }

var five = [String]()
var six = [String]()

var temp1 = ""
var temp2 = ""

for s in Array(input[0]).map { String($0) } {
    if s == "6" {
        temp1 += "5"
        temp2 += s
    } else if s == "5" {
        temp1 += s
        temp2 += "6"
    } else {
        temp1 += s
        temp2 += s
    }
}

five.append(temp1)
six.append(temp2)

temp1 = ""
temp2 = ""

for s in Array(input[1]).map { String($0) } {
    if s == "6" {
        temp1 += "5"
        temp2 += s
    } else if s == "5" {
        temp1 += s
        temp2 += "6"
    } else {
        temp1 += s
        temp2 += s
    }
}

five.append(temp1)
six.append(temp2)

print(Int(five[0])! + Int(five[1])!, Int(six[0])! + Int(six[1])!)
