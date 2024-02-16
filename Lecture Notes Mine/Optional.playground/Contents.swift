import UIKit

//Tanımlama

var message = "Hello"
// null, nil
var str: String? // bu soru işareti str boş olabilir ona göre kodlama yap diyor aslında optionalolan değer oradaki soru işareti.

str = "hello"
if str != nil { //, yani optional mı diye bakıyor ve sonuçta değilse yanında optional yazıyor.
    print(str!)// burada sağındaki ünlem koyduk ve buna unwrap deniyor bu optional değreden kurtarıyor sonucu yani bu ünlemi koymazsak sonç değerinde Otional("str") yazacaktır
}else{
    print("Str = nil")
}

//Optional binding
//nil var ise else çalışacak nil değilse if çalışacak bu if let olayına optional binding deniyor
if let temp = str {
    print(temp) // otomatik unwrap yapacak
}else{
    print(str = nil)
}


if var temp = str {
    print(temp)
    temp = "How are you" // if var ile yaptığımız için değiştirilebilir  bir değer oldu artık
    print(temp)
}else{
    print(str = nil)
}
