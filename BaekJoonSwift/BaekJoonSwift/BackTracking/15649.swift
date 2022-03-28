import Foundation

func bt(N: Int, M : Int, arr: [Int], lastNumber: Int) {
    if lastNumber > N {
        return
    }
    if arr.count == M {
        var string = ""
        arr.forEach {
            string += "\($0) "
        }
        print(string)
    } else {
        for i in 0..<N {
            if !arr.contains(i+1) {
                var tempArr = arr
                tempArr.append(i+1)
                bt(N: N, M: M, arr: tempArr, lastNumber: i+1)
            }
        }
    }
}

let inputs = readLine()!.split(separator: " ").map { Int($0)! }
bt(N: inputs[0], M: inputs[1], arr: [], lastNumber: 0)
