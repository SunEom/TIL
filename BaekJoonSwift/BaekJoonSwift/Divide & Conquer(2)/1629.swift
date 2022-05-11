import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

func dq(_ n: Int, _ c: Int, _ m: Int) -> Int {
    
    if c == 1 {
        return n % input[2]
    }
    let temp = dq(n, c/2, m)
    
    if c % 2 == 0 {
        return temp * temp % m
    }
    else {
        return n * temp * temp % m
    }
    
}

print(dq(input[0], input[1], input[2]))


/*
 
 
 let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

 func oprt(_ a: Int, _ b: Int, _ c: Int) -> Int {
     if b == 1 {
         return a % c
     }
     var temp = oprt(a, b/2, c)
     temp = temp * temp % c
     guard b % 2 == 1 else { return temp }
     return temp * a % c
 }

 print(oprt(nums[0], nums[1], nums[2]))
 
 
 */
