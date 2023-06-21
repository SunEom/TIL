//10101 삼각형 외우기

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

let sum = a+b+c

if a == 60 , b == 60, c == 60 {
    print("Equilateral")
} else if sum == 180, a == b || b == c || c == a {
    print("Isosceles")
} else if sum == 180 && !(a == b || b == c || c == a) {
    print("Scalene")
} else if sum != 180 {
    print("Error")
}
