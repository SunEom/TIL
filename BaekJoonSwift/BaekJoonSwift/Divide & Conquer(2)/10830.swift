// 행렬의 제곱

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }


func pow(_ m: [[Int]], r: Int) -> [[Int]] {
    if r == 1 {
        return m
    }
    
    var x = pow(m, r: r/2)
    
    x = multiple(x, x)
    
    if r%2 == 1 {
        x = multiple(x, m)
    }
    
    return x
}

func multiple(_ m: [[Int]], _ n : [[Int]]) -> [[Int]] {
    var result = Array(repeating: Array(repeating: 0, count: input[0]), count: input[0])
    
    for i in 0..<input[0] {
        for j in 0..<input[0] {
            for k in 0..<input[0] {
                result[i][j] += m[i][k] * n[k][j]
                result[i][j] %= 1000
            }
        }
    }
    
    return result
}

var matrix = Array(repeating: [Int](), count: input[0])

for i in 0..<input[0] {
    matrix[i] = readLine()!.split(separator: " ").map { Int(String($0))!%1000 }
}
matrix = pow(matrix, r: input[1])

print(matrix.map{ $0.map{ String($0) }.joined(separator: " ") }.joined(separator: "\n"))
