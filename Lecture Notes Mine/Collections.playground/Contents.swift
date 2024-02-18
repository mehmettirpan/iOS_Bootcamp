import UIKit

// Array use

var numbers = [10, 20, 30]
var fruits = [String]()

// add data

fruits.append("Apple")
fruits.append("Banana")
fruits.append("Cherry")
fruits.append("Pineapple")
print(fruits)

// update datas

fruits[0] = "New Apple"
print(fruits)

// Insert

fruits.insert("Orange", at: 1)
print(fruits)

// Read data
print(fruits[1])
let orange = fruits[1]
print(orange)

print("Array Lenght : \(fruits.count)")


// print array
for fruit in fruits {
    print("fruit: \(fruit)")
}

//print array with numbers
for (index, fruit) in fruits.enumerated() {
    print("\(index). : \(fruit)")
}


// remove value in an array

fruits.remove(at: 0)
print(fruits)

fruits.removeAll()
print(fruits)

// object oriented

class students{
    var no: Int?
    var name: String?
    var clases: String?
    
    init(no:Int, name:String, clases:String){
        self.no = no
        self.name = name
        self.clases = clases
    }
}

var s1 = students(no: 200, name: "Maria", clases: "11F")
var s2 = students(no: 123, name: "Jack", clases: "10G")
var s3 = students(no: 300, name: "Tiffany", clases: "12A")

var studentsList = [students]()
studentsList.append(s1)
studentsList.append(s2)
studentsList.append(s3)

for s in studentsList {
    print("No : \(s.no!) - Name: \(s.name!) - Class: \(s.clases!)")
}

// filters

var f1 = studentsList.filter({$0.no! > 123}) // numarası 123 den büyük olanları listele demek
print("filters 1")
for s in f1 {
    print("No : \(s.no!) - Name: \(s.name!) - Class: \(s.clases!)")
}


var f2 = studentsList.filter({ $0.name!.contains("M") })  // içinde "M" harfi geçenleri getir demek, büyük küçük harf duyarlı

print("filters 2")
for s in f2 {
    print("No : \(s.no!) - Name: \(s.name!) - Class: \(s.clases!)")
}


// Sorting - Sıralama


var sorting1 = studentsList.sorted(by: { $0.no! > $1.no! }) // kıyaslamak için birden fazla değer girmek gereklidir

print("numerical large to small")
for s in sorting1 {
    print("No : \(s.no!) - Name: \(s.name!) - Class: \(s.clases!)")
}

var sorting2 = studentsList.sorted(by: { $0.name! > $1.name! }) // kıyaslamak için birden fazla değer girmek gereklidir

print("text large to small")
for s in sorting2 {
    print("No : \(s.no!) - Name: \(s.name!) - Class: \(s.clases!)")
}
