// 27433 팩토리얼 2

func factorial(_ n : UInt64) -> UInt64 {
    if n == 0 { return 1 }
    else { return n*factorial(n-1)}
}

print(factorial(UInt64(readLine()!)!))
