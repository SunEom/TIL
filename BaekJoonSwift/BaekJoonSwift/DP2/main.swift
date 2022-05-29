
import Foundation

func quickSort(_ array: [Int]) -> [Int] {
    guard let first = array.first, array.count > 1 else { return array }
 
    let pivot = first
    let left = array[1...].filter { $0 <= pivot }
    let right = array.filter { $0 > pivot }
    
    return quickSort(left) + [pivot] + quickSort(right)
}


let n = Int(readLine()!)!
var r = ""

for _ in 0..<n {
    var result = 0
    let _ = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map { Int($0)! }

    while arr.count != 1 {
        arr = quickSort(arr)
        let a = arr.removeFirst()
        let b = arr.removeFirst()
        let temp = a+b
        result += temp
        arr.append(temp)
    }
    r += "\(result)\n"
}

print(r)
