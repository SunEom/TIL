// 개미굴

import Foundation

class Trie {
    var child = [String: Trie]()
    var name: String
    init(_ name: String) {
        self.name = name
    }
}

let N = Int(readLine()!)!
var root = Trie("")

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { String($0) }
    var parentTrie = root
    
    for i in 1..<input.count {
        if parentTrie.child[input[i]] == nil {
            parentTrie.child[input[i]] = Trie(input[i])
        }
        parentTrie = parentTrie.child[input[i]]!
    }
}

func printTrie(root: Trie, depth: Int) {
    for key in root.child.keys.sorted() {
        var prefix = String.init(repeating: "--", count: depth)
        print("\(prefix)\(key)")
        printTrie(root: root.child[key]!, depth: depth+1)
    }
}

printTrie(root: root, depth: 0)
