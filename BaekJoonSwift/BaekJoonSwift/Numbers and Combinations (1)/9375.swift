import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let c = Int(readLine()!)!
    var dict = [String: Int]()
    for _ in 0..<c{
        let temp = readLine()!.split(separator: " ").map{ String($0) }
        
        if dict[temp[1]] == nil {
            dict[temp[1]] = 1
        } else {
            dict[temp[1]]! += 1
        }
    }
    
    var result = dict.values.reduce(1) { prev, now in
        return prev * (now + 1)
    }
    print(result-1)
}
