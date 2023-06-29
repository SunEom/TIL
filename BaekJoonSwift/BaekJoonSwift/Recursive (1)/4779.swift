// 4779 칸토어 집합

import Foundation

func recursive(_ s: Int, _ e: Int) {
    if s >= e {
        return
    } else {
        let len = e-s+1
        let m = s+(len/3)
        for i in m..<m+(len/3) {
            list[i] = " "
        }
        recursive(s, m-1)
        recursive(m+len/3, e)
    }
}

var result = ""
var list = Array(repeating: "-", count: Int(pow(3.0, Double(1))))
while let line = readLine()  {
    list = Array(repeating: "-", count: Int(pow(3.0, Double(Int(line)!))))
    recursive(0, list.count-1)
    result += "\(list.joined())\n"
}

print(result)
