// CCW

let p1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let p2 = readLine()!.split(separator: " ").map { Int(String($0))! }
let p3 = readLine()!.split(separator: " ").map { Int(String($0))! }

let outerProduct = (p1[0]*p2[1] + p2[0]*p3[1] + p3[0]*p1[1]) - (p1[1]*p2[0] + p2[1]*p3[0] + p3[1]*p1[0])

if outerProduct == 0 {
    print(0)
} else if outerProduct > 0 {
    print(1)
} else {
    print(-1)
}

