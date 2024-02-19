import UIKit

// Set ----------------------------------------------------------------------

// Array den farklı olarak sıralı değil karışık verir değerleri
// aynı şeyi içine iki kere eklemez

var cars = Set<String>()

cars.insert("Audi")
cars.insert("Bmw")
cars.insert("Mercedes-Benz")
cars.insert("Volkswagen")
cars.insert("Toyota")
print(cars)

cars.insert("Audi") // zaten olduğu için bir daha ekleme yapmaz
print(cars)

for car in cars {
    print("Result: \(car)")
}

for (indeks, car) in cars.enumerated() {
    print("Result \(indeks): \(car)")
}


print( "Set Size : \(cars.count)")
print ("Set is Empty : \(cars.isEmpty)")

cars.remove("Toyota")
print(cars)

cars.removeAll()


// Dictionary  -/ other languages: HashMap - Map  -----------------------------------

var cities = [Int:String]()
// add data
cities[46] = "Maraş"
cities[16] = "Bursa"
cities[34] = "İstanbul"
print(cities)
// Read Data
print(cities[46]!)
//Data updating
cities[46] = "Kahramanmaraş"
print(cities)

for (key, value) in cities {
    print("\(key)->\(value)")
}

cities.removeValue(forKey: 16)
print(cities)


