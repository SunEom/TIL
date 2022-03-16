import Foundation


var i = 0
var limit = 1

let num = Int(readLine()!)!

while limit < num {
    i += 1
    limit += 6*i
}

print(i+1)
