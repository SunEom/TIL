import Foundation

enum CompassPoint: String {
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
//    case north, south, east, west
}

var direction = CompassPoint.east
direction = .south

switch direction {
case .north:
    print("north")
case .south:
    print("south")
case .east:
    print("east")
case .west:
    print("west")
}


switch direction {
case .north:
    print(direction.rawValue)
    
case .south:
    print(direction.rawValue)
    
case .east:
    print(direction.rawValue)
    
case .west:
    print(direction.rawValue)
}

let direction2 = CompassPoint(rawValue: "북")

enum PhoneError {
    case unknown
    case battteryLow(String)
}

let error = PhoneError.battteryLow("배터리가 곧 방전됩니다.")

switch error {
case .battteryLow(let message):
    print(message)
    
case .unknown:
    print("알 수 없는 에러 입니다.")
}

