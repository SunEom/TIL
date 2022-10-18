    import Foundation

//#1
    //var result = ""
    //
    //func postOrder(start: Int) {
    //    if tree[start].left != -1  {
    //        postOrder(start: tree[start].left)
    //    }
    //
    //    if tree[start].right != -1  {
    //        postOrder(start: tree[start].right)
    //    }
    //
    //    result += "\(tree[start].value)\n"
    //}
    //
    //var index = 0
    //var tree = [(index: Int, left: Int, right: Int, value: Int)]()
    //var stack = [Int]()
    //
    //stack.append(0)
    //tree.append((0, -1, -1, Int(readLine()!)!))
    //
    //while let t = readLine() {
    //    let temp = Int(t)!
    //    let tempIndex = tree.count
    //    tree.append((tempIndex, -1, -1, temp))
    //
    //
    //    if temp < tree[stack.last!].value {
    //        tree[stack.last!].left = tempIndex
    //        stack.append(tempIndex)
    //    } else {
    //        if stack.count == 1 {
    //            tree[stack.removeLast()].right = tempIndex
    //            stack.append(tempIndex)
    //        } else {
    //            while stack.count > 1 && !(temp > tree[stack.count-1].value && temp < tree[stack[stack.count-2]].value) {
    //                stack.removeLast()
    //            }
    //            tree[stack.removeLast()].right = tempIndex
    //            stack.append(tempIndex)
    //        }
    //    }
    //}
    //
    //postOrder(start: 0)
    //
    //print(result)


// #2
//    var input = [Int]()
//
//    while let t = readLine(), let temp = Int(t) {
//        input.append(temp)
//    }
//
//    func findRightNodeIndex(s: Int, e: Int, v: Int) -> Int {
//        var s = s, e = e
//        while(s < e) {
//            let mid = (s+e)/2
//            if input[mid] > v {
//                e = mid
//            } else {
//                s = mid + 1
//            }
//        }
//        return s
//    }
//
//    func postOrderTravel(s: Int, e: Int) {
//        if s <= e {
//            let rightIndex = findRightNodeIndex(s: s+1, e: e, v: input[s])
//            postOrderTravel(s: s+1, e: rightIndex-1)
//            postOrderTravel(s: rightIndex, e: e)
//            print(input[s])
//        }
//    }
//
//    postOrderTravel(s: 0, e: input.count-1)


var preOrderList = [Int]()

while let input = readLine(), let n = Int(input) {
    preOrderList.append(n)
}

func binarySearch(low: Int, high: Int, target: Int) -> Int {
    var low = low, high = high
    
    while low < high {
        let mid = (low+high)/2
        if target < preOrderList[mid] {
            high = mid
        } else {
            low = mid + 1
        }
    }
    return low
}

func postOrder(start: Int, end: Int) {
    if start >= end {return}
    let selectedIndex = binarySearch(low: start+1, high: end, target: preOrderList[start])
    postOrder(start: start+1, end: selectedIndex)
    postOrder(start: selectedIndex, end: end)
    print(preOrderList[start])
}

postOrder(start: 0, end: preOrderList.count)
