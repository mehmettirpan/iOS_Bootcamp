import UIKit


class Functions {
    
    func kmToMil (km:Double) -> Double {
        let result = km * 0.621371192
        return result
    }
    
    func oblong (longEdge:Double, shortEdge:Double){
        let result = longEdge * shortEdge
        print("Area is \(result)")
    }
    
    func factorial (value:Int) -> Int {
        var result = 1
        for i in 1...value{
            result *= i
        }
        return result
    }
    
    func sumE (word:String){
        var result = 0
        
        for char in word{
            if (char == "e"){
                result = result + 1
            } else{
                continue
            }
        }
        print("Result = \(result)")
    }
    
    func internalAngle(edge:Int) -> Int {
        let sumResult = ((edge - 2) * 180 )
        return sumResult
    }
    
    func salary (workDays:Int){
        var workHour = workDays * 8
        let hourPrice = 40
        let extraHourPrice = 80
        if (workHour >= 0 && workHour <= 150){
            var salary = workHour * hourPrice
            print("Salary is = \(salary)")
        }else if (workHour > 150 && workHour < 248){
            var salary = (150 * hourPrice) + ((workHour - 150) * extraHourPrice)
            print("Salary is = \(salary)")
        }else{
            print("Work days is Wrong")
        }
    }
    
    
    func priceOfPark (hour:Double) -> Int {
        let anHourPrice = 50
        let extraHourPrice = 10
        var result = 0
        if (hour <= 1.0 && hour > 0.0){
            result = 50
        }else{
            result = 50 + ((Int(ceil(hour)) - 1) * 10) // TR - Int(ceil(Double)) değeri içerideki double değerini üst sayıya yuvarlar
        }                                              // EN - Int(ceil(Double)) this parameter determines the double value as a top number
        return result
    }
}

let call = Functions()


//     ---------------------- CALL FUNCTIONS -------------------------------


let kmToMil = call.kmToMil(km: 5)
print("5 km = \(kmToMil) mil")

call.oblong(longEdge: 20, shortEdge: 15)

let factorial = call.factorial(value: 4)
print("Factorial = \(factorial)")

call.sumE(word: "elementary")

let internalAngle = call.internalAngle(edge: 4)
print("sum of internal angle = \(internalAngle)")

call.salary(workDays: 32)
call.salary(workDays: 28)
call.salary(workDays: -20)
call.salary(workDays: 15)
call.salary(workDays: 0)


let priceOfPark = call.priceOfPark(hour: 15.2)
print("Park Price = \(priceOfPark)")
