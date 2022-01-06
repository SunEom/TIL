import UIKit
import Foundation

var greeting = "Hello, playground"

for i in 0...99{
    i
}


// Variable & Constant

let a: Int = 100

var b: Int = 200

// Data Type

var someInt: Int = -100
someInt = 100

var someUInt: UInt = 200

var someFloat: Float = 1.1
someFloat = 1
print(someFloat)

var someDouble: Double = 1.1
someDouble = 1

var someBool: Bool = true
someBool = false

var someCharacter: Character = "가"
someCharacter = "A"
someCharacter = "☂️"

var someString: String = "Hello! 😀"

var number = 10 // 타입 추론

// Collection Type

var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[0]
numbers[1]
numbers[2]

numbers.insert(4, at: 2)
numbers

numbers.remove(at: 0)
numbers

var names = [String]()
var names2: [String] = []

//var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic: [String: Int] = ["Kwon":1]
dic["Kim"] = 3
dic["Lee"] = 5
dic

dic["Kim"] = 6
dic

dic.removeValue(forKey: "Kim")
dic

var set: Set = Set<Int>()

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.insert(30)
set

set.remove(20)
set

// Function & Method

func sum(a: Int, b: Int) -> Int {
    return a + b
}

sum(a:3, b: 5)

func hello() -> String {
    return "Hello"
}

hello()


func printName() -> Void {
    
}

func greeting(friend: String, me: String = "Gunter") {
    print("Hello, \(friend)! I'm \(me)")
}

greeting(friend: "Albert")


func sendMessage(from myName: String, to name : String) -> String {
    return "Hello \(name)! I'm \(myName)"
}

sendMessage(from: "gunter", to: "Json")


func sendMessage(_ name: String) -> String{
    return "Hello \(name)!"
}

sendMessage("Suneom")

func sendMessage(from myName: String, to name : String...) -> String {
    return "Hello \(name)! I'm \(myName)"
}

sendMessage(from: "gunter", to: "Json","Ablert","Stella")

// Conditional Branch

var age: Int = 12

if age < 19 {
    print("미성년자입니다.")
}

age = 20

if age < 19 {
    print("미성년자")
} else {
    print("성인")
}

let animal = "pig"

if animal == "dog" {
    print("강아지 사료주기")
} else if animal == "cat"{
    print("고양이 사료주기")
} else {
    print("해당하는 동물 사료가 없음")
}

let color = "red"

switch color {
case "blue":
    print("파란색입니다.")
case "green":
    print("초록색입니다.")
case "yellow":
    print("노란색입니다.")
default:
    print("찾는 색상이 없습니다.")
}

let temperature = 30

switch temperature {
case -20...9:
    print("겨울입니다.")
case 10...14:
    print("가을입니다.")
case 15...25:
    print("봄입니다.")
case 26...35:
    print("여름입니다.")
default:
    print("이상 기후입니다.")
}

// Loop

for i in 1...4 {
    print(i)
}

let array = [1,2,3,4,5]

for item in array {
    print(item)
}

var num = 5

while num < 10 {
    num += 1
}

num

var x = 6

repeat {
    x += 2
} while x < 5

x
