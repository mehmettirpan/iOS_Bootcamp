import UIKit

class Car{
    var color:String?
    var speed:Int?
    var isWorking:Bool?
    
    
    init(){
        print(" empty print methot is working")
    }
    
    init(color:String, speed:Int, isWorking:Bool){
        self.color = color // self bulunduğu sınıfı temsil eder
        self.speed = speed
        self.isWorking = isWorking  // bu tanımlamaya shadowing denir. Diğer dillerde karşılığı this ' dir
        print(" init methot is working")
    }
    func start(){ // side effect class ın değişkenlkerini değiştirebildiği için b una side effect deniyor
        isWorking = true
        speed = 260
    }
    
    func stop(){
        isWorking = false
        speed = 0
    }
    
    func speedUp (howFast:Int){
        if howFast > 0{
            speed!+=howFast // speed = speed + howFast
        }else {
            print("value is wrong")
        }
    }
    
    func speedDown (howSlow:Int){
        if howSlow > 0 && howSlow < speed!{
            speed!-=howSlow // speed = speed + howFast
        }else {
            print(speed!)
        }
    }
    
    func getInfo(){
        print ("Color      : \(color!)")
        print ("Speed      : \(speed!)")
        print ("Is working : \(isWorking!)")
        print ("-------------")
    }
    
    
}

//  // bu aşağıdaki yoruma aldığım kısım uzun yol ve en alttaki kısım ise kısaltılmış halidir

//// create object
//var bmw = Car()
//
//// assign value  -- değer atama
//
//bmw.color = "Black"
//bmw.isWorking = true
//bmw.speed = 260
//
//// read value
//print ("BMW --------")
//print ("Color      : \(bmw.color!)")
//print ("Speed      : \(bmw.speed!)")
//print ("Is working : \(bmw.isWorking!)")
//print ("------------\n")
//
//bmw.start()
//bmw.getInfo()
//
//bmw.speedUp(howFast: 100)
//bmw.getInfo()
//bmw.speedDown(howSlow: 260)
//bmw.getInfo()



var bmw = Car(color: "black", speed: 120, isWorking: true)
bmw.getInfo()


class Functions {
    //    void function
    func hello1(){
        let result = "Hello"
        print(result)
    }
    
    //    return function
    func hello2() -> String{
        let result = "Hello"
        return result
    }
    
    
    func hello3 (name:String){
        let result = ("Hello \(name)")
        print(result)
    }
    
    func math (value1:Int, value2:Int, operating:String){
        if (operating == "add"){
            let result = value1 + value2
            print("Addition = \(result)")
        } else if (operating == "sub"){
            let result = value1 - value2
            print("Subraction = \(result)")
        }else if (operating == "multiplication"){
            let result = value1 * value2
            print("Multiplication = \(result)")
        }else{
            print("Code is Wrong")
        }
    }
    
    func add (value1:Int, value2:Int) -> Int {
        let sum = value1 + value2
        return sum
    }
    
    
//    Overloading

    func multiply (value1:Int, value2:Int){
        let multiply = value1 * value2
        print("multiply = \(multiply)")
    }
    
    func multiply (value1:Double, value2:Double){
        let multiply = value1 * value2
        print("multiply = \(multiply)")
    }
    
    func multiply (value1:Double, value2:Double, name:String){
        let multiply = value1 * value2
        print("multiply = \(multiply) - \(name)")
    }
    
}


let f = Functions()
f.hello1()

let comingResult = f.hello2()
print ("Coming Result : \(comingResult)")

f.hello3(name: "Jack")

f.math(value1: 3, value2: 5, operating: "add")
f.math(value1: 3, value2: 5, operating: "sub")
f.math(value1: 3, value2: 5, operating: "multiplication")
f.math(value1: 3, value2: 5, operating: "sum")

let sum = f.add(value1: 5, value2: 8)
print("Sum = \(sum)")

let nameMulti = f.multiply(value1: 2.0, value2: 4.0, name: "Benjamin")




// // Static Variable and Methods   -------------------------------


class ClassA {
    
    static var x = 10
    
    static func method(){
        print("method was worked")
    }
}

let call = ClassA()

//// bu kodlar static olmadan çalışan halleri
//print(call.x)
//call.method()
//print(ClassA().x) // virtual Object  - Sanal nesne - isimsiz nesne
//ClassA().method()


print(ClassA.x) // static Object - statik nesne Yani parantezsiz halde ulaşabildik
ClassA.method()



// // Enumeration   -------------------------------------------------

enum KonserveBoyut {
    case small
    case medium
    case large
}

func priceCalculate (size:KonserveBoyut, piece:Int){
    switch size {
    case KonserveBoyut.small: print ("Price : \(piece * 13) $")
    case KonserveBoyut.medium: print ("Price : \(piece * 24) $")
    case KonserveBoyut.large: print ("Price : \(piece * 45) $")
    }
}

priceCalculate(size: .medium, piece: 100)



// // Composition   -------------------------------------------------

class Categories {
    var category_id:Int?
    var category_name:String?
    
    init(category_id:Int, category_name:String){
        self.category_id = category_id
        self.category_name = category_name
    }
}

class Directors {
    var director_id:Int?
    var director_name:String?
    
    init(director_id:Int, director_name:String){
        self.director_id = director_id
        self.director_name = director_name
    }
}

class Films {
    var film_id:Int?
    var film_name:String?
    var film_year:Int?
    var category:Categories?
    var director:Directors?
    
    init(film_id:Int, film_name:String, film_year:Int, category:Categories, director:Directors){
        self.film_id = film_id
        self.film_name = film_name
        self.film_year = film_year
        self.category = category
        self.director = director
    }
}


let category1 = Categories(category_id: 1, category_name: "Drama")
let category2 = Categories(category_id: 2, category_name: "Comedy")
let category3 = Categories(category_id: 3, category_name: "Science Fiction")

let director1 = Directors(director_id: 1, director_name: "Nuri Bilge Ceylan")
let director2 = Directors(director_id: 2, director_name: "Quetin Tarantino")
let director3 = Directors(director_id: 3, director_name: "Christopher Nolan")

let film1 = Films(film_id: 1, film_name: "Django", film_year: 2013, category: category1, director: director2)
print("Film id       : \(film1.film_id!)")
print("Film name     : \(film1.film_name!)")
print("Film year     : \(film1.film_year!)")
print("Film category : \(film1.category!.category_name!)")
print("Film director : \(film1.director!.director_name!)")
