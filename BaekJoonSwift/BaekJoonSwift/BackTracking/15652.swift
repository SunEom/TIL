import Foundation

func bt(N : Int, M: Int, arr: [Int], last : Int) {
    if last > N {
        return
    }
    if arr.count == M {
        var string = ""
        arr.forEach {
            string += "\($0) "
        }
        result += string + "\n"
    } else {
        for i in last...N {
            var temp = arr
            temp.append(i)
            bt(N: N, M: M, arr: temp, last: i)
        }
    }
}

var result = ""
let input = readLine()!.split(separator: " ").map { Int($0)! }
bt(N: input[0], M: input[1], arr: [], last: 1)
print(result)
