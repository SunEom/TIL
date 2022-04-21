import Foundation

let n = Int(readLine()!)!

var result = [[0,0]]
var i = 1

while result.count != n+1 {
    var countTwo = 0
    var countFive = 0
    var temp = i
    while temp % 2 == 0{
        temp /= 2
        countTwo+=1
    }
    
    while temp % 5 == 0 {
        temp /= 5
        countFive+=1
    }
    result.append([result.last![0]+countTwo, result.last![1]+countFive])
    i+=1
}

print(min(result.last![0], result.last![1]))
