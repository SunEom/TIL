//
//  main.swift
//  BaekJoonSwift
//
//  Created by 엄태양 on 2022/04/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var result = ""

func bt(arr: [Int]) {
    if arr.count == input[1] {
        arr.forEach { item in
            result += "\(item) "
        }
        result += "\n"
        return
    }

    let last = arr.last == nil ? 1 : arr.last!
    
    for i in last...input[0] {
        bt(arr: arr+[i])
    }
}

bt(arr: [])
print(result)
