import Foundation

let N = Int(readLine()!)!
var largeHeight = 0
var largeWidth = 0
var largeHeightIndex = 0
var largeWidthIndex = 0

var input = [[Int]]()

for i in 0..<6 {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    switch temp[0] {
        case 1, 2:
            if temp[1] > largeWidth {
                largeWidth = temp[1]
                largeWidthIndex = i
            }
        case 3, 4:
            if temp[1] > largeHeight {
                largeHeight = temp[1]
                largeHeightIndex = i
            }
        default:
            break
    }
    input.append(temp)
}

let largeArea = largeWidth * largeHeight

let smallWidth = abs(input[((largeHeightIndex + 6) - 1) % 6][1] - input[((largeHeightIndex + 1) % 6)][1])
let smallHeight = abs(input[((largeWidthIndex + 6) - 1) % 6][1] - input[((largeWidthIndex + 1) % 6)][1])

let smallArea = smallWidth * smallHeight

print((largeArea - smallArea)*N)
                     
