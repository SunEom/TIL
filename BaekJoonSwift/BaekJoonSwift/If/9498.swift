import Foundation

let score = Int(readLine()!)!

if 90...100 ~= score {
    print("A")
} else if 80...89 ~= score {
    print("B")
} else if 70...79 ~= score {
    print("C")
} else if 60...69 ~= score {
    print("D")
} else {
    print("F")
}
