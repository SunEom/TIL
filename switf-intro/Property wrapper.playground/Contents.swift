struct Address {
    private var cityname: String = ""
    
    var city: String{
        get { cityname }
        set { cityname = newValue.uppercased() }
    }
}


var address = Address()

address.city = "London"
print(address.city)

@propertyWrapper
struct FixCase{
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get {value}
        set {value = newValue.uppercased()}
    }
    
    init(wrappedValue initialValue: String) {
        self.wrappedValue = initialValue
    }
}

struct Contact {
    @FixCase var name: String
    @FixCase var city: String
    @FixCase var country: String
}

var contact = Contact(name: "John Smith", city: "London", country: "United Kingdom")
print("\(contact.name), \(contact.city), \(contact.country)")


//@propertyWrapper
//struct MinMaxVal {
//    var value: Int
//    let max: Int
//    let min: Int
//
//    init(wrappedValue: Int, min: Int, max: Int){
//        value = wrappedValue
//        self.min = min
//        self.max = max
//    }
//
//    var wrappedValue: Int {
//        get {return value}
//        set {
//            if newValue > max {
//                value = max
//            } else if newValue < min {
//                value = min
//            } else {
//                value = newValue
//            }
//        }
//    }
//}

@propertyWrapper
struct MinMaxVal<V: Comparable> {
    var value: V
    let min: V
    let max: V
    
    init(wrappedValue: V, min: V, max: V){
        value = wrappedValue
        self.min = min
        self.max = max
    }
    
    var wrappedValue: V{
        get { return value }
        set {
            if newValue > max {
                value = max
            } else if newValue < min {
                value = min
            } else {
                value = newValue
            }
        }
    }
}

struct Demo{
    @MinMaxVal(min: 100, max: 200) var value: Int = 100
}

var demo = Demo()
demo.value = 150
print(demo.value)

demo.value = 250
print(demo.value)


struct Demo2 {
    @MinMaxVal(min:"Apple", max: "Orange") var value: String = ""
}

var demo2 = Demo2()
demo2.value = "Banana"
print(demo2.value)

demo2.value = "Pear"
print(demo2.value)
