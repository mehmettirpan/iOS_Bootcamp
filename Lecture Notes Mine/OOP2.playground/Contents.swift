import UIKit

class House{
    var numberOfWindows:Int?
    
    init(numberOfWindows:Int){
        self.numberOfWindows = numberOfWindows
    }
}

class Palace : House{
    var numberOfTower:Int?
    
    init(numberOfTower:Int, numberOfWindows:Int) {
        self.numberOfTower = numberOfTower
        super.init(numberOfWindows: numberOfWindows) // super ifadesi ile bir üst sınıfa veri gönderdik
    }
}

class Villa : House{
    var isThereGarage:Bool?
    
    init(isThereGarage:Bool, numberOfWindows:Int) {
        self.isThereGarage = isThereGarage
        super.init(numberOfWindows: numberOfWindows)
    }
}


let topkapiPalace = Palace(numberOfTower: 5, numberOfWindows: 450)
let villaBosphorus = Villa(isThereGarage: true, numberOfWindows: 70)

print(topkapiPalace.numberOfTower!)
print(topkapiPalace.numberOfWindows!)
print(villaBosphorus.isThereGarage!)
print(villaBosphorus.numberOfWindows!)





// // Override    -------------------------------------------------

class Animal{
    
    func makeSound (){
        print("I don't have my sound")
    }
}

class Mammal : Animal{

}

class Cat : Mammal{
    override func makeSound() {
        print("miav miav")
    }
}

class Dog : Mammal{
    override func makeSound() {
        print("hav hav")
    }
}


let animal = Animal()
let mammal = Mammal()
let cat = Cat()
let dog = Dog()

animal.makeSound()  // kalıtım yok kendi fonksiyonunu çalıştırdı
mammal.makeSound()  // kalıtım var üst sınıfın fonksiyonunu çalıştırdı
cat.makeSound()     // kalıtım var ama kendi methodunu kullandı
dog.makeSound()     // kedinin aynısı






// // Type Casting    -------------------------------------------------

// Upcasting ------- alt class üst class a dönüşecek

var house = Palace(numberOfTower: 3, numberOfWindows: 10) as House

// Downcasting  ---- eğer as den sonra ünlem ya da soru işareti varsa downcasting demektir

var palace = House(numberOfWindows: 6) as? Palace


//  // type checking

if house is House {
    print("object is in a House Class")
}else{
    print("object isn't in a House Class")
}


// Protocol

protocol MyProtocol{
    var variable:Int{get set} //taslak oluşturduk
    
    func method1()
    func method2() -> String
}

class ClassA : MyProtocol {
    var variable: Int = 10
    
    func method1() {
        print("method1 was worked")
    }
    
    func method2() -> String{
        return "Method2 was worked"
    }
}

var a = ClassA()

print(a.variable)
a.method1()
print(a.method2())


// // Extension
// sistemde bir sürü class var ve bunlara kednimiz bir şeyler yazabiliriz exstension bu demek

extension Int{
    func multiple(value:Int) -> Int {
        return self * value  // self genişletmek istediğimiz class ı temsil ediyor
    }
}

let x = 3.multiple(value: 5)
print(x)

// // Closure // ifade sonunda süslü parantez açılıyor ve içinde in ifadesi gördüğümüz bir çok yer closure demek

let ifade = {
print("hello")
}

ifade()
