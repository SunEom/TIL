func sayHello(){
    print("Hello")
}

sayHello()


func buildMessageFor(name: String, count: Int) -> String {
    return "\(name), you are customer number \(count)"
}

func buildMessageFor2(name: String, count: Int) -> String {
    "\(name), you are customer number \(count)"
}

print(buildMessageFor(name: "Suneom", count: 10))
print(buildMessageFor2(name: "Sangbon", count: 20))

func buildMessageFor3(_ name: String, _ count: Int) -> String{
    "\(name), you are cusotmer number \(count)"
}

func buildMessageFor4(userName name: String, userCount count: Int) -> String{
    "\(name), you are cusotmer number \(count)"
}


print(buildMessageFor3("John", 30))
print(buildMessageFor4(userName: "Curry", userCount: 40))


func buildMessasgeFor5(_ name: String = "Customer", count: Int) -> String {
    return "\(name), you are cusotmer number \(count)"
}

let message = buildMessasgeFor5(count: 100)
print(message)

func sizeConverter(_ length: Float) -> (yards: Float, centimeters: Float, meters: Float){
    let yards = length * 0.0277778
    let centimeters = length * 2.54
    let meters = length * 0.0254
    
    return(yards, centimeters, meters)
}

let lengthTuple = sizeConverter(20)

print(lengthTuple.yards)
print(lengthTuple.centimeters)
print(lengthTuple.meters)


func displayStrings(_ strings: String...){
    for string in strings{
        print(string)
    }
}

displayStrings("one", "two", "three", "four")

func calcuateArea(length: Float, width: Float) -> Float{
    var length = length
    var width = width
    
    length = length * 2.54
    width = width * 2.54
    return length * width
}

print(calcuateArea(length: 10, width: 20 ))
    
var myValue = 10

func doubleValue(_ value: Int)->Int{
    var value = value
    value += value
    return value
}

print("Before function call myValue = \(myValue)")

print("doubleValue call returns \(doubleValue(myValue))")

print("After function call myValue = \(myValue)")

func doubleValue (_ value: inout Int) -> Int{
    value += value
    return value
}

print("Before function call myValue = \(myValue)")

print("doubleValue call returns \(doubleValue(&myValue))")

print("After function call myValue = \(myValue)")


func inchesToFeet (_ inches: Float) -> Float{
    return inches * 0.0833333
}

func inchesToYards(_ inches: Float) -> Float{
    return inches * 0.02777778
}

let toFeet = inchesToFeet
let toYard = inchesToYards

func outputConversion(_ converterFunc: (Float)->Float, value : Float){
    let result = converterFunc(value)
    print("Result of conversion is \(result)")
}

outputConversion(toYard, value: 10)
outputConversion(toFeet, value: 10)


func decideFunction(_ feet:Bool) -> (Float)->Float{
    if feet {
        return toFeet
    } else {
        return toYard
    }
}

let multiply = {(_ val1:Int, _ val2: Int)->Int in
    return val1 * val2
}
let result = multiply(10,20)
