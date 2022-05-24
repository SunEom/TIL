import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = [Int]()
var result = 1

for _ in 0..<input[0] {
    arr.append(Int(readLine()!)!)
}

arr.sort()

var s = 1
var e = arr.last! - arr[0]

while s <= e {
    let m = (s+e)/2
    
    if isPossible(m) {
        result = m
        s = m + 1
    } else {
        e = m - 1
    }
    
}

func isPossible (_ distance : Int) -> Bool { // distance 이상 떨어진 거리에 있는 집이 inpu[1]채 이상 있는지 확인하는 함수
    var count = 1 // 첫번째 집은 항상 설치
    var prev = 0
    
    for i in 1..<arr.count {
        if arr[i]-arr[prev] >= distance {
            prev = i
            count += 1
        }
    }
    
    return count >= input[1]
}

print(result)
