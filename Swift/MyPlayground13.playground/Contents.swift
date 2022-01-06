import Foundation

struct Developer {
    let name: String
}

struct Company {
    let name: String
    var developer: Developer?
}

var developer = Developer(name: "Gongcu")
var company = Company(name: "Suneom", developer: developer)
print(company.developer)
print(company.developer?.name)
print(company.developer!.name)
