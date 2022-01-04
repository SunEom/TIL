struct SampleStruct {
    var name: String
    
    init(name: String){
        self.name = name
    }
}

class SampleClass {
    var name: String
    
    init(name: String){
        self.name = name
    }
}

let myStruct = SampleStruct(name: "Mark")
let myClass = SampleClass(name: "Mark")


print(myStruct.name)

var myStruct2 = myStruct
myStruct2.name = "David"

print(myStruct.name)
print(myStruct2.name)


let myClass1 = SampleClass(name: "Mark")
var myClass2 = myClass1
myClass2.name = "David"

print(myClass1.name)
print(myClass2.namegit )
