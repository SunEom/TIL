import Foundation



func recursion(str: [Character], l: Int, r: Int) -> Int {
    count += 1
    if l >= r  { return 1 }
    else if str[l] != str[r] { return 0 }
    else { return recursion(str: str, l: l+1, r: r-1) }
}

func isPalindrome(str: [Character]) -> Int {
    return recursion(str: str, l: 0, r: str.count-1)
}

var count = 0
let num = Int(readLine()!)!

for _ in 0..<num {
    count = 0
    let str = Array(readLine()!)
    let result = isPalindrome(str: str)
    
    print(result, count)
}



