import Foundation

let N = Int(readLine()!)!
var result1 = 0
var result2 = 0

func fibo1 (n: Int) -> Int {
    if(n == 1 || n == 2){
        return 1
    } else {
        return fibo1(n: n-2) + fibo1(n: n-1)
    }
}

func fibo2(n: Int) -> Int{
    var arr = [0,1,1]
    
    for i in 3...n {
        arr.append(arr[i-2]+arr[i-1])
        result2 += 1
    }
    
    return result2
}


print("\(fibo1(n: N)) \(fibo2(n: N))")
