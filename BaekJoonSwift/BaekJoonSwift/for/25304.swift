//
//  main.swift
//  BaekJoonSwift
//
//  Created by 엄태양 on 2022/08/15.
//

import Foundation

let total = Int(readLine()!)!
let n = Int(readLine()!)!
var cost = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    cost += input[0] * input[1]
}

if cost == total {
    print("Yes")
} else {
    print("No")
}
