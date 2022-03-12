import Foundation

var string = readLine()!

string = string.replacingOccurrences(of: "c=", with: "c")
string = string.replacingOccurrences(of: "c-", with: "c")
string = string.replacingOccurrences(of: "dz=", with: "c")
string = string.replacingOccurrences(of: "d-", with: "c")
string = string.replacingOccurrences(of: "lj", with: "c")
string = string.replacingOccurrences(of: "nj", with: "c")
string = string.replacingOccurrences(of: "s=", with: "c")
string = string.replacingOccurrences(of: "z=", with: "c")

print(string.count)
