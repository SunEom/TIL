// 1213 펠린드롬 만들기

let arr = Array(readLine()!).map { String($0) }
var dict = [String: Int]()
var oddCount = 0
var oddIndex = ""
var result = ""

for c in arr {
    if dict[c] == nil {
        dict[c] = 0
    }
    dict[c]! += 1
}

let keys = dict.keys.sorted(by: >)

for key in keys {
    if dict[key]! % 2 == 1 {
        oddCount += 1
        oddIndex = key
        if oddCount == 2 {
            break
        }
    }
}

if oddCount > 1 {
    print("I'm Sorry Hansoo")
} else {
    if oddCount == 1 {
        result = oddIndex
        dict[oddIndex]! -= 1
    }
    
    for key in keys {
        while dict[key] != 0 {
            result = key + result + key
            dict[key]! -= 2
        }
    }
    
    print(result)
}
