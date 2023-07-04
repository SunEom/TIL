// 1946 신입 사원

//let T = Int(readLine()!)!
//var result = ""
//
//for _ in 0..<T {
//    let N = Int(readLine()!)!
//    var arr = [[Int]]()
//    var cnt = 1
//
//    for _ in 0..<N {
//        arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
//    }
//
//    let sort1 = arr.sorted { $0[0] < $1[0] }
//
//    var sort1Low = sort1[0][1]
//
//    for i in 1..<sort1.count {
//        if sort1[i][1] < sort1Low   {
//            cnt += 1
//            sort1Low = sort1[i][1]
//        }
//    }
//    result += "\(cnt)\n"
//}
//
//print(result)



//MARK: - FileIO 사용

import Foundation

// 라이노님의 FileIO
final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        
        return str
    }
}


let file = FileIO()

let T = file.readInt()
var result = ""

for _ in 0..<T {
    let N = file.readInt()
    var arr = [[Int]]()
    var cnt = 1
    
    for _ in 0..<N {
        arr.append([file.readInt(), file.readInt()])
    }
    
    let sort1 = arr.sorted { $0[0] < $1[0] }
    
    var sort1Low = sort1[0][1]
    
    for i in 1..<sort1.count {
        if sort1[i][1] < sort1Low   {
            cnt += 1
            sort1Low = sort1[i][1]
        }
    }
    result += "\(cnt)\n"
}

print(result)
