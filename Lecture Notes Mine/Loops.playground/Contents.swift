import UIKit

// 1,2,3

for i in 1...3{ // burada 1 den başlayıp 3 e kadar gideceğini belirtiyor
    print ("Loop \(i): \(i)")
}


// 10 ile 30 aralığında 5 er 5 er artmasını istiyoruz
for a in stride(from: 10, to: 30, by: 5){
    print ("\(a - 5) + 5 = \(a)")
}

// 1,2,3
var timer = 1

while timer < 4 {
    print ("Loop \(timer): \(timer)")
//    uzun yol : timer = timer + 1
    timer+=1
}


// dögüleri durdumak ve o adımı pas geçmek için olan keyword lere bakacağız (break, continue)

for i in 1...5{
    if i == 3 {
        break
    }
    print ("Loop \(i): \(i) ")
    
}

for i in 1...5{
    if i == 3 {
        continue
    }
    print ("Loop \(i): \(i) ")
    
}
