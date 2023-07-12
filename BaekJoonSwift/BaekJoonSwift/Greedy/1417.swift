// 1417 국회의원 선거

struct MaxHeap<Element: Comparable> {
    var elements: [Element] = []

    var isEmpty: Bool {
        return elements.isEmpty
    }

    var count: Int {
        return elements.count
    }

    mutating func insert(_ element: Element) {
        elements.append(element)
        siftUp(from: elements.count - 1)
    }

    mutating func siftUp(from index: Int) {
        var child = index
        var parent = parentIndex(of: child)

        while child > 0 && elements[child] > elements[parent] {
            elements.swapAt(child, parent)
            child = parent
            parent = parentIndex(of: child)
        }
    }

    mutating func pop() -> Element? {
        guard !isEmpty else {
            return nil
        }

        elements.swapAt(0, count - 1)
        let element = elements.removeLast()
        siftDown(from: 0)
        return element
    }

    mutating func siftDown(from index: Int) {
        var parent = index

        while true {
            let leftChild = leftChildIndex(of: parent)
            let rightChild = rightChildIndex(of: parent)
            var candidate = parent

            if leftChild < count && elements[leftChild] > elements[candidate] {
                candidate = leftChild
            }

            if rightChild < count && elements[rightChild] > elements[candidate] {
                candidate = rightChild
            }

            if candidate == parent {
                return
            }

            elements.swapAt(parent, candidate)
            parent = candidate
        }
    }

    func parentIndex(of index: Int) -> Int {
        return (index - 1) / 2
    }

    func leftChildIndex(of index: Int) -> Int {
        return index * 2 + 1
    }

    func rightChildIndex(of index: Int) -> Int {
        return index * 2 + 2
    }
}

// MaxHeap 코드 출처 : https://magomercy.com/algorithm/swift로+Heap+구현하기

let N = Int(readLine()!)!
var result = 0

var my = Int(readLine()!)!


var heap = MaxHeap<Int>()

for _ in 0..<N-1 {
    heap.insert(Int(readLine()!)!)
}

while heap.count > 0 {
    let temp = heap.pop()!
    
    if temp < my {
        break
    } else {
        my += 1
        result += 1
        heap.insert(temp-1)
    }
}

print(result)
