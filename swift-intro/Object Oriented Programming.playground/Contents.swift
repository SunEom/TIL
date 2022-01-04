import SwiftUI

class BankAccount{
    var accountBalance: Float = 0
    var accountNumber: Int = 0
    let fees: Float = 25.00
    
    var balanceLessFees: Float {
        get {
            return accountBalance - fees
        }
        
        set(newBalance){
            accountBalance = newBalance - fees
        }
    }
    
    func displayBalance(){
        print("Number \(accountNumber)")
        print("Current balance is \(accountBalance)")
    }
    
    init(number: Int, balance:Float){
        accountNumber = number
        accountBalance = balance
    }
    
//    deinit(){
//        print("Deleted")
//        // 필요한 정리 작업을 여기서 수행한다.
//    }
    
    class func getMaxBalance()-> Float {
        return 100000.00
    }
}

var account1: BankAccount = BankAccount(number: 12312312, balance: 400.54)

var balance1 = account1.accountBalance

account1.accountBalance = 6789.98

account1.displayBalance()

var maxAllowed = BankAccount.getMaxBalance()

var balance2 = account1.balanceLessFees
account1.balanceLessFees = 12123.12

account1.displayBalance()

//class MyClass{
//
//    lazy var myProperty: String = {
//        var result = resourceIntensiveTask()
//        result = processData(data: result)
//        return result
//    }()
//
//}


class MyClass {
    var myNumber = 10
    
    func addTen(){
//        self.myNumber += 10
        myNumber += 10
    }
    
    func printNumber(myNumber: Int){
        print(myNumber)
        print(self.myNumber)
    }
}


var myClass = MyClass()

myClass.printNumber(myNumber: 30)

protocol MessageBuilder {
    var name: String {get}
    func buildMessage() -> String
}

class MyClass2: MessageBuilder {
    
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func buildMessage() -> String {
        "Hello " + name
    }
}
