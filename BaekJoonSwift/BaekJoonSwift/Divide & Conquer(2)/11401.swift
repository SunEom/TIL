import Foundation

func factorial(n: CLong) -> CLong {
    var num = n
    var result = 1
    while num >= 1 {
        result *= num
        result %= m
        num -= 1
    }
    return result
}

func pow(n: Int, k: CLong) -> CLong {
    if k == 1 {
        return n % m
    }
    let p = pow(n: n, k: k/2)
    
    if k % 2 == 1 {
        return n * (p * p % m) % m
    } else {
        return p * p % m
    }
}

let m = 1000000007

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let bunja = factorial(n: input[0])

let bunmo = factorial(n: input[1]) * factorial(n: input[0]-input[1]) % m

print(bunja * pow(n: bunmo, k: m-2) % m)
