import Foundation

func solution() {
    let n = Int(readLine()!)!
    
    let arr = [[1,1],[1,0]]
    
    print(power(arr, n)[0][1])
}

func power(_ arr: [[Int]], _ n: Int) -> [[Int]] {
    
    if n == 0 {
        return [[1,0],[0,1]] // 단위 행렬
    }
    
    else if n == 1 {
        return arr
    }
    
    else {
        let h = power(arr, n/2)
        let r = power(arr, n%2)
        return multi(multi(h, h), r)
    }
    
}

func multi(_ mat1: [[Int]], _ mat2: [[Int]]) ->[[Int]] {
    var result = [[0,0],[0,0]]
    
    for i in 0...1 {
        for j in 0...1 {
            var sum = 0
            for k in 0...1 {
                sum += (mat1[i][k] * mat2[k][j]) % 1_000_000_007
            }
            result[i][j] = sum % 1_000_000_007
        }
    }
    return result
}

solution()
