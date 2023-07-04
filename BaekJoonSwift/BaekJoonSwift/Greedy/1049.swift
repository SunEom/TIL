//1049 기타줄

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let N = input[0]
let M = input[1]

var set = [Int]()
var single = [Int]()

var setCount = 0
var singleCount = 0
var result = Int.max

for _ in 0..<M {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    set.append(temp[0])
    single.append(temp[1])
}

set.sort()
single.sort()

for i in 0...Int(ceil(Double(N)/6.0)) {

    if 6*i >= N{
        if set[0]*i < result {
            setCount = i
            singleCount = 0
            result = set[0]*i
        }
    } else {
        if set[0]*i+single[0]*(N-6*i) < result {
            setCount = i
            singleCount = N-6*i
            
            result = set[0]*i+single[0]*(N-6*i)
        }
    }
}

print(setCount*set[0] + singleCount*single[0])
