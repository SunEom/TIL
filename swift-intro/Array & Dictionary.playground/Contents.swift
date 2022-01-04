var treeArray = ["Pine", "Oak", "Yew"]

let treeArray2 = ["Pine", "Oak", "Yew"]

var treeArray3: [String] = ["Pine", "Oak", "Yew"]

var priceArray = [Float]()

var nameArray = [String](repeating: "My String", count: 10)

let firstArray = ["Red", "Green", "Blue"]
let secondArray = ["Indigo", "Violet"]

let thirdArray = firstArray + secondArray

print(nameArray)
print(thirdArray)

var itemCount = treeArray.count

print(itemCount)

if treeArray.isEmpty {
    print("Array is Empty")
} else {
    print("Array is not Empty")
}
print(treeArray)

treeArray[1] = "Redwood"

print(treeArray)

let shuffeldTrees = treeArray.shuffled()

let randomTree = treeArray.randomElement()

print(shuffeldTrees)
print(randomTree)

treeArray.append("RedWood")
treeArray += ["RedWood"]
treeArray += ["RedWood", "Maple", "Birch"]

print(treeArray)

treeArray.insert("Maple", at: 0)

print(treeArray)

treeArray.remove(at: 2)
print(treeArray)

treeArray.removeLast()
print(treeArray)

let tArray = ["Pine","Oak","Yew","Maple","Birch","Myrtle"]

for tree in tArray {
    print(tree)
}

//let mixedArray: [Any] = ["A String", 432, 34.989]

let mixedArray: [Any] = [1, 2, 45, "Hello"]

//for object in mixedArray {
//    print(object as! Int * 10)
//}

var bookDict = ["100-432112" : "Wind in the Willows",
                "200-532874" : "Tale of Two Cities",
                "202-546549" : "Sense and Sensibility",
                "104-109834" : "Shutter Island"]

var myDictionary =  [Int: String]()

let keys = ["100-432112","200-532874","202-546549","104-109834"]
let values = ["Wind in the Willows","Tale of Two Cities","Sense and Sensibility", "Shutter Island"]

let bookDict2 = Dictionary(uniqueKeysWithValues: zip(keys, values))
print(bookDict2)

let bookDict3 = Dictionary(uniqueKeysWithValues: zip(1..., values))
print(bookDict3)

print(bookDict3.count)
print(bookDict["100-432112"])
print(bookDict["100-432123", default: "Book not found"])

bookDict["300-898871"] = "The Overlook"
print(bookDict)

bookDict["300-898871"] = nil
print(bookDict)

for (bookid, title) in bookDict {
    print("Book ID : \(bookid), Title: \(title)")
}
