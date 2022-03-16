import Foundation

while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] == 0 && input[1] == 0 && input[2] == 0 {
        break
    }
    var length = [pow(Decimal(input[0]), 2), pow(Decimal(input[1]),2) , pow(Decimal(input[2]),2)]
    length.sort()
    if length[0]+length[1] == length[2] {
        print("right")
    } else {
        print("wrong")
    }
}
