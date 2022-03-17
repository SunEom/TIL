import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let d = sqrt((pow((input[0] - input[3]) , 2) + pow((input[1] - input[4]) , 2)))
    let r1 = input[2]
    let r2 = input[5]
    
    if d == 0 && r1 == r2{
        print(-1)
    } else if fabs(r1-r2) < d && d < r1+r2 {
        print(2)
    } else if d == r1+r2 || d == fabs(r1-r2){
        print(1)
    } else {
        print(0)
    }
}

