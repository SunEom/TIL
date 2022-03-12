import Foundation

let alphabets = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
let string = readLine()!
let arr = Array(string)


for a in alphabets {
    let num = arr.firstIndex(of: Character(a))
    if num == nil {
        print(-1, terminator: " ")
    } else {
        print(num!, terminator: " ")
    }
    
}
