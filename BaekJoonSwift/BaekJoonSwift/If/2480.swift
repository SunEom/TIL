import Foundation

var data = readLine()!.split(separator: " ").map{ Int($0)! }
let s = Set(data)

if s.count == 1 {
    print(10000+data[0]*1000)
}
else if s.count == 2 {
    for item in s {
        if data.firstIndex(of: item) != data.lastIndex(of: item) {
            print(1000 + item*100)
            break
        }
    }
}
else if s.count == 3 {
    data.sort { $0 > $1 }
    print(data[0]*100)
}
