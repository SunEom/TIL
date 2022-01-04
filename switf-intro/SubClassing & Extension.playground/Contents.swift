class BankAccount {
    var accountBalance: Float
    var accountNumber: Int
    
    init(number: Int, balance: Float){
        accountNumber = number;
        accountBalance = balance
    }
    
    func displayBalance(){
        print("Number \(accountNumber)")
        print("Current Balance is \(accountBalance)")
    }
}

class SavingsAccount: BankAccount {
    var interestRate: Float = 0.0
    
    init(number: Int, balance: Float, rate: Float){
        interestRate = rate;
        super.init(number: number, balance: balance)
    }
    
    func calculateInterest() -> Float {
        return interestRate * accountBalance
    }
    
    override func displayBalance() {
//        print("Number \(accountNumber)")
//        print("Current balance is \(accountBalance)")
        super.displayBalance()
        print("Prevailing interest rate is \(interestRate)")
    }
}

let savings1 = SavingsAccount(number: 12311, balance: 600.00, rate: 0.07)

print(savings1.calculateInterest())
savings1.displayBalance()

extension Double {
    var squared: Double {
        return self * self
    }
    
    var cubed: Double {
        return self * self * self
    }
}


let myValue: Double = 3.0
print(myValue.squared)
print(myValue.cubed)
