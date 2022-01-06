import Foundation

class User {
    var nickname: String
    var age: Int
    
    init(nickname: String, age: Int){
        self.nickname = nickname
        self.age = age
    }
    
    init(age: Int){
        self.nickname = "albert"
        self.age = age
    }
    
    deinit {
        print("Deinit User")
    }
}

var user = User(nickname: "suneom", age: 26)
user.nickname
user.age

var user2 = User(age: 27)
user2.nickname
user2.age

var user3: User? = User(age: 23)
user3 = nil
