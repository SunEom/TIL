import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var result = [[0,0]]

func countTwo(n: Int) -> Int{
    var temp = n
    var result = 0
    while temp != 0 {
        temp /= 2
        result += temp
    }
    return result
}

func countFive(n: Int) -> Int{
    var temp = n
    var result = 0
    while temp != 0 {
        temp /= 5
        result += temp
    }
    return result
}

print(min(countTwo(n: input[0]) - countTwo(n: input[1]) - countTwo(n: input[0]-input[1]), countFive(n: input[0]) - countFive(n: input[1]) - countFive(n: input[0]-input[1])))
