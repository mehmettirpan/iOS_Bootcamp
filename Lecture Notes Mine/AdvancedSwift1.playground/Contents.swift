import UIKit

// Standart if-else struct
func knowPerson(name:String){
    
    if name == "Mehmet"{
        print("Hello Mehmet")
    }else{
        print("Unknown Person")
    }
}
knowPerson(name: "Mehmet")
knowPerson(name: "Jack")


// Guard struct, this is opposite of if-else   ---------------------------
// So it's run the false value

func knowPerson1(name:String){
    guard name == "Olive" else{
        print("Unkown person")
        return
    }
   print("Hello Olive")
}

knowPerson1(name: "Olive")
knowPerson1(name: "Mehmet")

// Debug

////1.Compile Error : Editörün hataları
//let x = 10
//x = 40


//// 2.Runtime Error : Exception: Çalışma sırasında olan hatalar
//let result = 10 / 0


// enum - do-try-catch struct
enum Errors : Error {
    case sifiraBolunmeHatasi
}


// fonksiyondaki throws ifadesi hata olabilme ihtimali var diyor yani throw olanları try ile yazmamız gerekiyor

func bolme(sayi1:Int, sayi2:Int) throws -> Int {
    if sayi2 == 0 {
        throw Errors.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}

// do-try-catch

do{
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
}catch Errors.sifiraBolunmeHatasi{
    print("Sayı sıfıra bölünemez")
}

let sonuc1 = try? bolme(sayi1: 10, sayi2: 0) //hata olursa sonuç nil olacaktır

if let temp = sonuc1{
    print(temp)
}else{
    print("Sayi sıfıra bölünemez")
}
