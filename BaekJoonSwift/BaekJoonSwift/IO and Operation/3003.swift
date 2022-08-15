    //
    //  main.swift
    //  BaekJoonSwift
    //
    //  Created by 엄태양 on 2022/08/15.
    //

    import Foundation

    let needs = [1,1,2,2,2,8]
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    var result = ""

    for i in 0..<input.count {
        result += "\(needs[i]-input[i]) "
    }

    print(result)
