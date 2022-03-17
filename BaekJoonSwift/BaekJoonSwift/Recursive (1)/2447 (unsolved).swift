import Foundation
var arr = [[String]]()

func printStar(_ num : Int) -> [String] {
    if num == 3 {
        return ["***","* *","***"]
    } else {
        var temp = [String]()
        var sub = printStar(num/3)
        for _ in 0..<3 {
            for x in sub {
                temp.append(x)
            }
        }
        for x in sub {
            temp.append(x)
            for _ in 0..<num/3 {
                temp.append(" ")
            }
            temp.append(x)
        }
        for _ in 0..<3 {
            for x in sub {
                temp.append(x)
            }
        }
        return temp
    }
}

for x in printStar(27) {
    print(x, terminator: " ")
}


