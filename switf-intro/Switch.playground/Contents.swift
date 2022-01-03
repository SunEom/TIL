let value = 4

switch(value){
case 0:
    print("zero")
    
case 1:
    print("one")
    
case 2:
    print("two")
    
case 3:
    print("three")
    
case 4:
    print("four")
    
case 5:
    print("five")
    
default:
    print("Integer out of range")
}

switch(value){
case 0,1,2:
    print("zero, one or two")
case 3:
    print("three")
case 4:
    print("four")
case 5:
    print("five")
default:
    print("Integer out of range")
}

let temperature = 83

switch(temperature){
case 0...49:
    print("Cold")
    
case 50...79:
    print("Warm")
    
case 80...110:
    print("Hot")
    
default:
    print("Temperature out of range")
    
}

switch(temperature){
case 0...49 where temperature % 2 == 0:
    print("Cold and even")
    
case 50...79 where temperature % 2 == 0:
    print("Warm and even")
    
case 80...110 where temperature % 2 == 0:
    print("Hot and even")
    
default:
    print("Temperature out of range or odd")
}


let temperature2 = 10

switch(temperature2){
case 0...49 where temperature2 % 2 == 0:
    print("Cold and even")
    fallthrough
    
case 50...79 where temperature2 % 2 == 0:
    print("Warm and even")
    fallthrough
    
case 80...110 where temperature2 % 2 == 0:
    print("Hot and even")
    fallthrough
    
default:
    print("Temperature out of range or odd")
}
