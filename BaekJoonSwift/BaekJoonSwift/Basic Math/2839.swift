import Foundation

let weight = Int(readLine()!)!
var five: Int = 0 , three : Int = 0
var isSolved = false

five = weight / 5
three = (weight - five * 5) / 3

while five >= 0 {
    if (five * 5 + three * 3 == weight) {
        isSolved = true
        break
    }
    five -= 1
    three = (weight - five * 5) / 3
}

if isSolved {
    print(five + three)
} else {
    print(-1)
}

