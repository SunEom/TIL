//숨바꼭질 4

import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

var queue = [Int]()
var prev = Array(repeating: -1, count: 100001)

queue.append(input[0])
prev[input[0]] = input[0]

if input[0] == input[1] {
    print(0)
    print(input[0])
} else {
    while true {
        let v = queue.removeFirst()
        if v == input[1] {
            break
        }
            
        if v-1 >= 0, prev[v-1] == -1 {
            queue.append(v-1)
            prev[v-1] = v
        }
        
        if v+1 <= 100000, prev[v+1] == -1 {
            queue.append(v+1)
            prev[v+1] = v
        }
        
        if v != 0, 2*v <= 100000, prev[v*2] == -1 {
            queue.append(2*v)
            prev[2*v] = v
        }
    }
    
    var route = [Int]()
    
    var p = input[1]
    
    while true {
        route.append(p)
        if p == input[0] {
            break
        }
        p = prev[p]
    }
    
    route.reverse()
    
    print(route.count - 1)
    print(route.map { String($0)}.joined(separator: " ") )
}




