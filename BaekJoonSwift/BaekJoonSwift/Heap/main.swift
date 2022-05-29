import Foundation

func push (value: Int) {
    heap.append(value)
    
    if heap.count == 0 {
        return
    }
    else {
        var child = heap.count - 1
        var parent = child / 2
        
        while parent > 0 {
            if heap[parent] <= heap[child] {
                heap.swapAt(parent, child)
            }
            child = parent
            parent = child/2
        }
    }
}

func pop() -> Int {
    if heap.count == 0 {
        return 0
    } else {
        let result = heap[0]
        
        heap[0] = heap[heap.count-1]
        
        var parent = 0
        var lchild = 1, rchild = 2
        
        while !(heap[lchild] == nil && heap[rchild] == nil) {
            
        }
        
        return result
    }
}

var heap = [Int]()
var temp = Array((1...100))
for i in 1...10 {
    push(value: temp.randomElement()!)
    print(i, heap)
}


//                        89
//                    83      77
//                80     64 24    1
//            44    23  1
