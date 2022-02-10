// Structure

struct User {
    var nickname: String
    var age: Int
    
    func information(){
        print("\(nickname) \(age)")
    }
}

var user: User = User(nickname: "Suneom", age: 26)

user.nickname
user.nickname = "Sangbon"
user.nickname

user.information()

// Class

class Dog {
    var name: String = ""
    var age: Int = 0
    
    init() {
    
    }
    
    func introduce(){
        print("name: \(name), age: \(age)")
    }
}

var dog: Dog = Dog()
dog.name = "CoCo"
dog.age = 3
dog.name
dog.age

dog.introduce()

