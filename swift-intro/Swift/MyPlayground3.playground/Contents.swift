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
