print("Int32 Min = \(Int32.min) Int32 Max = \(Int32.max)")

var myChar1 = "f"
var myChar2 = ":"
var myChar3 = "X"

var myChar4 = "\u{0058}"

print(myChar1)
print(myChar2)
print(myChar3)
print(myChar4)


var userName = "John"
var inboxCount = 25
var maxCount = 100

var message = "\(userName) has \(inboxCount) messages. Message capacity remaining is \(maxCount - inboxCount) messages."

print(message)

print("Hello world!")

var multipleline = """
    The console glowed with flashing warnings.
    Clearly time was running out.

    "I thought you said you knew how to fly this" yelled Mary.

    "It was much easier on the simulator" replied her brother,
    trying to keep the panic out of his voice
"""

print(multipleline)

var newline = "\n"

var backslash = "\\"

print(newline)
print(backslash)


var userCount = 10

let maxUserCount = 20

var usercount: Int = 10

var singalStrength = 2.231
let companyName = "My Company"

let bookTitle = " SwiftUI Essentials"

let bookTitle2: String

var mybool = true

if mybool {
    bookTitle2 = "SwiftUI Essentials"
} else {
    bookTitle2 = "Android Studio Development Essentials"
}

print(bookTitle2)

let myTuple = (10, 432.433, "This is a String")

print(myTuple)

//let myString = myTuple.2

//print(myString)

//let(myInt, myDouble, myString) = myTuple

let(myInt, _, myString) = myTuple
print(myInt, myString)


let myTuple2 = (count: 10, length : 432.324, message:"This is a String")

print(myTuple2.message)

var index : Int?

index = 3

var treeArray = ["oak","pine","yew","birch"]

//if index != nil{
//    print(treeArray[index!])
//} else {
//    print("index does not contain a value")
//}


if let myValue = index {
    print(treeArray[myValue])
} else {
    print("index does not contain a value")
}

var pet1: String?
var pet2: String?

pet1 = "cat"
pet2 = "dog"

if let firstPet = pet1, let secondPet = pet2{
    print(firstPet)
    print(secondPet)
} else{
    print("insufficient pets")
}
                                   
