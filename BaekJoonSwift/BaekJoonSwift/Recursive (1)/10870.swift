import Foundation

func fibo(_ num: Int) -> Int {
    if num == 0 {
        return 0
    } else if num == 1 {
        return 1
    } else {
        return fibo(num-1) + fibo(num-2)
    }
}

print(fibo(Int(readLine()!)!))
