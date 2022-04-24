//import Foundation
//
//let inputs = readLine()!.split(separator: " ").map { Int($0)! }
//var result = ""
//
//func bt(n : Int, m: Int, arr : [Int]) {
//    if arr.count == m {
//        arr.forEach {
//            result += "\($0) "
//        }
//        result += "\n"
//    } else {
//        for i in 1...n {
//            bt(n:n, m:m,arr: arr+[i])
//        }
//    }
//}
//
//bt(n:inputs[0], m:inputs[1], arr: [])
//print(result)


import Foundation
var result = ""
func bt(N: Int, M: Int, arr: [Int], last : Int) {
    
    if arr.count == M {
        var string = ""
        arr.forEach{
            string += "\($0) "
        }
        result += string+"\n"
    } else {
        for i in 1...N {
            var temp = arr
            temp.append(i)
            bt(N: N, M: M, arr: temp, last: i)
        }
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
bt(N: input[0], M: input[1], arr: [], last: 0)
print(result)

