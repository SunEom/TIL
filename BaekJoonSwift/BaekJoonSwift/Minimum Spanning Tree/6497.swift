// 6497 swift

//import Foundation
//
//var set: [Int]!
//var string = ""
//func find(_ target: Int) -> Int {
//    var s = set[target]
//    while s != set[s] {
//        s = set[s]
//    }
//
//    return s
//}
//
//func union(_ a: Int, _ b: Int) {
//    let aSet = find(a)
//    let bSet = find(b)
//
//    if aSet > bSet {
//        set[aSet] = bSet
//    } else {
//        set[bSet] = aSet
//    }
//
//}
//
//while true {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let (N, M) = (input[0], input[1])
//    if N == 0 && M == 0 {
//        break
//    }
//    set = Array(0..<N)
//    var result = 0
//    var edges = [(Int, Int, Int)]()
//
//    for _ in 0..<M {
//        let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
//        edges.append((temp[0], temp[1], temp[2]))
//    }
//
//    edges.sort { $0.2 < $1.2 }
//    for edge in edges {
//
//        let from = edge.0, to = edge.1, value = edge.2
//
//        if find(from) != find(to) {
//            union(from, to)
//        } else {
//            result += value
//        }
//
//    }
//    string += "\(result)\n"
//}
//print(string)


//MARK: - FileIO

class  FileIO {
    private var buffer:[UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }

    @inline(__always)  private func read() -> UInt8 {
        defer { index += 1 }

        return buffer.withUnsafeBufferPointer { $0[index] }
    }

    @inline(__always)  func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10 || now == 32 { // 공백과 줄바꿈 무시
            now = read()
        }
        
        if now == 45{ // 음수 처리
            isPositive.toggle()
            now = read()
        }
        
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }
}

import Foundation

var set: [Int]!
var string = ""
func find(_ target: Int) -> Int {
    var s = set[target]
    while s != set[s] {
        s = set[s]
    }
    
    return s
}

func union(_ a: Int, _ b: Int) {
    let aSet = find(a)
    let bSet = find(b)
    
    if aSet > bSet {
        set[aSet] = bSet
    } else {
        set[bSet] = aSet
    }
}

let file = FileIO()

while true {
    let (N, M) = (file.readInt(), file.readInt())
    if N == 0 && M == 0 {
        break
    }
    set = Array(0..<N)
    var result = 0
    var edges = [(Int, Int, Int)]()
    
    for _ in 0..<M {
        edges.append((file.readInt(),file.readInt(),file.readInt()))
    }
    
    edges.sort { $0.2 < $1.2 }
    for edge in edges {
        
        let from = edge.0, to = edge.1, value = edge.2
        
        if find(from) != find(to) {
            union(from, to)
        } else {
            result += value
        }
    
    }
    string += "\(result)\n"
}
print(string)



