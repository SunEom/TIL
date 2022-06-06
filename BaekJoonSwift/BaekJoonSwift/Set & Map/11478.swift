import Foundation

var set = Set<String>()

var str = Array(readLine()!)

var temp = ""
for i in 0..<str.count {
    for j in i..<str.count {
        temp += String(str[j])
        set.insert(temp)
    }
    temp = ""
}

print(set.count)
