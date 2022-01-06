import Foundation

struct Dog {
    var name: String
    let gender: String
}

var dog = Dog(name: "coco", gender: "male")
print(dog)

dog.name = "narr"

let dog2 = Dog(name: "dducki", gender: "female")
//dog2.name = "teddy"

class Cat {
    var name: String
    let gender: String
    
    init(name: String, gender: String){
        self.name = name
        self.gender = gender
    }
}

let cat = Cat(name: "guoul", gender: "male")
cat.name = "navi"
print(cat.name)


struct Stock {
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int {
        get {
            return averagePrice * quantity
        }
        
        set {
            averagePrice = newValue / quantity
        }
    }
}

var stock: Stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice
stock.purchasePrice = 3000
stock.averagePrice


class Account {
    var credit: Int = 0 {
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account: Account = Account()

account.credit = 1000

struct SomeStructure {
    static var storedTypeProperty = "Some value."
    
    static var computedTypeProperty: Int {
        return 1
    }
}

SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "Hello"
SomeStructure.storedTypeProperty
SomeStructure.computedTypeProperty
