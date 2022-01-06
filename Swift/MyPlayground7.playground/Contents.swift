import Foundation

class Vehicles {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        print("Turn on Speaker")
    }
}

class Bicycle: Vehicles {
    var hasBasket: Bool = false
}

var bycicle = Bicycle()
bycicle.currentSpeed
bycicle.currentSpeed = 15.0
bycicle.currentSpeed

class Train: Vehicles {
    override func makeNoise() {
        super.makeNoise()
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()

class Car: Vehicles {
    var gear: Int = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)

class AutomaticCar : Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
