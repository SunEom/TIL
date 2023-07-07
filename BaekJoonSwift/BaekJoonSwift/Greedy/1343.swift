// 1343 폴리오미노

let input = Array(readLine()!).map { String($0) }

var count = 0

var result = ""
var fail = false

for s in input {
    if s != "." {
        count += 1
    } else {
        if count % 2 == 1 {
            fail = true
        } else {
            while count >= 4 {
                result += "AAAA"
                count -= 4
            }
            
            while count >= 2 {
                result += "BB"
                count -= 2
            }
        }
        result += "."
    }
}

if count % 2 == 1 {
    fail = true
} else {
    while count >= 4 {
        result += "AAAA"
        count -= 4
    }

    while count >= 2 {
        result += "BB"
        count -= 2
    }
}


print(fail ? -1 : result)
