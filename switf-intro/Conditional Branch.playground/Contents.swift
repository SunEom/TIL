for index in 1...5 {
    print("Value of index is \(index)")
}


var count = 0

for _ in 1...5 {
    // 현재 값에 대한 참조체가 필요 없다
    count += 1
}

var myCount = 0

while myCount < 100 {
    myCount += 1
}

print(myCount)

var i = 10

repeat {
    i -= 1
} while (i > 0)


var j = 10

for _ in 0 ..< 100 {
    j += j

    if j > 100 {
        break
    }
    
    print("j = \(j)")
}


func multiplyByTen(value: Int?){
    
    guard let number = value, number < 10 else {
        print("Number is too high")
        return
    }
    
    let result = number * 10
    print(result)
}

multiplyByTen(value: 5)
