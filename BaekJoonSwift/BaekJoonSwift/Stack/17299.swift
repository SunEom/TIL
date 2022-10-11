import Foundation

// Error?
//func solution() {
//    let N = Int(readLine()!)!
//    var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//    var count = Array(repeating: 0, count: N+1)
//    var notFound = [Int]()
//
//    for i in 0..<N {
//
//        count[arr[i]] += 1
//
//        while !notFound.isEmpty && count[arr[notFound.last!]] < count[arr[i]] {
//            arr[notFound.removeLast()] = arr[i]
//        }
//
//        notFound.append(i)
//    }
//
//    for index in notFound {
//        arr[index] = -1
//    }
//
//    print(arr.map { String($0) }.joined(separator: " "))
//}
//
//solution()


import Foundation

let n = Int(readLine()!)!
var numArray = readLine()!.split(separator:" ").map{Int(String($0))!}

var count = Array(repeating: 0, count: 1000000)
var stack = [Int]()

for i in 0..<n {
    count[numArray[i]-1] += 1
}

for i in 0..<n {
    
    while !stack.isEmpty && count[numArray[stack.last!]-1] < count[numArray[i]-1] {
        numArray[stack.removeLast()] = numArray[i]
    }
    stack.append(i)
}

for i in stack {
    numArray[i] = -1
}

print(numArray.map{String($0)}.joined(separator: " "))
