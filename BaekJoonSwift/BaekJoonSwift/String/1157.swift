import Foundation

var string = Array(readLine()!).map { Character($0.uppercased()) }
var dict = Dictionary<Character, Int>()

for c in string {
    if dict.contains { key, value in
        key == c
    } {
        dict[c] = dict[c]! + 1
    } else {
        dict.updateValue(1, forKey: c)
    }
}

var temp = Array(Set(string))
temp.sort {
    dict[$0]! > dict[$1]!
}

if temp.count == 1 {
    print(temp[0].uppercased())
} else if dict[temp[0]]! != dict[temp[1]]! {
    print(temp[0].uppercased())
} else {
    print("?")
}
