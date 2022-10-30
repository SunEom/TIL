// 절대값 힙

import Foundation

class Heap {
    private var data = [Int]()
    
    private func compare(d1: Int, d2: Int) -> Bool {
        if abs(d1) == abs(d2) {
            return d1 < d2
        } else {
            return abs(d1) < abs(d2)
        }
    }
    
    func isEmpty() -> Bool {
        return data.isEmpty
    }
    
    func insert(e: Int) {
        var idx = data.count
        data.append(e)
        
        while idx > 0, compare(d1: data[idx], d2: data[(idx-1)/2]) {
            data.swapAt(idx, (idx-1)/2)
            idx = (idx-1)/2
        }
    }
    
    func delete() -> Int? {
        if data.isEmpty {
            return nil
        }
           
       if data.count == 1 {
           return data.removeLast()
       }
       
       let target = data.first
       data.swapAt(0, data.count - 1)
       _ = data.popLast()
           
       var idx = 0
       let limit = data.count
       
       while idx < limit {
           let leftChild = idx * 2 + 1
           let rightChild = leftChild + 1
           
           let children = [leftChild, rightChild]
               .filter{$0 < limit && compare(d1: data[$0], d2: data[idx])}
               .sorted {compare(d1: data[$0], d2: data[$1])}
                               
           if children.isEmpty { break }
           
           data.swapAt(idx, children[0])
           idx = children[0]
       }
       
       return target
   }
}

let heap = Heap()

let N = Int(readLine()!)!
var result = ""

for _ in 0..<N {
    let input = Int(readLine()!)!

    if input == 0 {
        result += "\(heap.delete() ?? 0)\n"
    } else {
        heap.insert(e: input)
    }
}
print(result)
