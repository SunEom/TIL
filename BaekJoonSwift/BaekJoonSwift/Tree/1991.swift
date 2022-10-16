import Foundation

var preresult = ""
var inresult = ""
var postresult = ""

func preorderTravel(start: String) {
    preresult += start
    if dict[start]!.left != "." {
        preorderTravel(start: dict[start]!.left)
    }
    if dict[start]!.right != "." {
        preorderTravel(start: dict[start]!.right)
    }
}

func inorderTravel(start: String) {
    if dict[start]!.left != "." {
        inorderTravel(start: dict[start]!.left)
    }
    inresult += start
    if dict[start]!.right != "." {
        inorderTravel(start: dict[start]!.right)
    }
}


func postorderTravel(start: String) {
    if dict[start]!.left != "." {
        postorderTravel(start: dict[start]!.left)
    }
    if dict[start]!.right != "." {
        postorderTravel(start: dict[start]!.right)
    }
    postresult += start
}


let N = Int(readLine()!)!

var dict = [String: (left: String, right: String)]()

for _ in 0..<N {
    let temp = readLine()!.split(separator: " ").map { String($0) }
    dict[temp[0]] = (temp[1], temp[2])
}

preorderTravel(start: "A")
inorderTravel(start: "A")
postorderTravel(start: "A")

print(preresult)
print(inresult)
print(postresult)

