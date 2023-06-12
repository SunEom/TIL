//
//  main.swift
//  BaekJoonSwift
//
//  Created by 엄태양 on 2023/06/11.
//

import Foundation

var arr = [[Character]]()

for i in 0..<5 {
    arr.append(Array(readLine()!))
}

var result = ""

for c in 0..<15 {
    for r in 0..<5 {
        if arr[r].count > c {
            result += String(arr[r][c])
        }
    }
}

print(result)
