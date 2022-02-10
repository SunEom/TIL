import Foundation

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return self % 2 == 1
    }
}

var number = 3

number.isEven
number.isOdd

extension String {
    func convertToInt () -> Int? {
        return Int(self)
    }
}

var string = "0"
string.convertToInt()
