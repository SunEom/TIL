import Foundation

let hello = {()->() in
    print("Hello")
}

hello()

let hello2 = { (name: String) -> String in
    return "Hello \(name)!"
}

hello2("Suneom")


func doSomething(closure: () -> ()){
    closure()
}

doSomething(closure: { () -> () in
    print("Hello")
})

doSomething() {
    print("Hello 2")
}

doSomething {
    print("Hello 2")
}

func doSomething2() -> () -> () {
    return {()->() in
        print("Hello 4")
    }
}

doSomething2()()

func doSomething2(success: () -> (), fail: () -> ()){
    
}

doSomething2 {
    <#code#>
} fail: {
    <#code#>
}

func doSomething3(closure: (Int, Int, Int)-> Int) {
    closure(1,2,3)
}

doSomething3(closure: {(a,b,c) in
    return a+b+c
})

doSomething3(closure: {
    return $0+$1+$2
})

doSomething3(closure: {
    $0+$1+$2
})

doSomething3() {
    $0+$1+$2
}

doSomething3 {
    $0+$1+$2
}
