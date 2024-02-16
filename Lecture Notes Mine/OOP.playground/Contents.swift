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

let namemulti = f.multiply(value1: 2.0, value2: 4.0, name: "Benjamin")
