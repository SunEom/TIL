// 2302 극장 좌석
//

// Time Over

//import Foundation
//
//let N = Int(readLine()!)!
//let M = Int(readLine()!)!
//var result = 0
//var available = Array(repeating: true, count: N+2)
//var vip = [Int]()
//available[0] = false
//available[available.count-1] = false
//
//
//for _ in 0..<M {
//    let input = Int(readLine()!)!
//    available[input] = false
//    vip.append(input)
//}
//
//func solve(_ s: Int, _ arr: [Bool]) {
//    if vip.contains(s) {
//        solve(s+1, arr)
//    }
//
//    if s == N+1 {
//        result += 1
//        return
//    }
//
//    for i in -1...1 {
//        if arr[s+i]{
//            var tarr = arr
//            tarr[s+i] = false
//            solve(s+1, tarr)
//        }
//    }
//}
//
//solve(1, available)
//
//print(result)
