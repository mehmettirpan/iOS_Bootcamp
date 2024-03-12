//
//  ViewController.swift
//  UseDate&TimePicker
//
//  Created by Mehmet Tırpan on 12.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfSaat: UITextField!
    @IBOutlet weak var tfTarih: UITextField!
    
    var datePicker: UIDatePicker?
    var timePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tfTarih.inputView = datePicker
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        tfSaat.inputView = timePicker
        
        
        
//        // Eski görünüm yani alttan çıkan teker tarzı istersek aşağıdaki kodlamayı yapmamız gerekiyor
        if #available(iOS 13.4, *){ 
            datePicker?.preferredDatePickerStyle = .wheels
            timePicker?.preferredDatePickerStyle = .wheels

        }
//        // buraya kadarlık kısım
        
        
        
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(dokunmaAlgilamaMetot))
        view.addGestureRecognizer(dokunmaAlgilama)
        
        datePicker?.addTarget(self, action: #selector(tarihGoster(uiDatePicker:)), for: .valueChanged)
        datePicker?.addTarget(self, action: #selector(saatGoster(uiDatePicker:)), for: .valueChanged)

        
    }

    @objc func dokunmaAlgilamaMetot(){
        print("ekrana dokunuldu")
        view.endEditing(true) // sayfa üzerinde açılmnış yapıları kapatmak için kullanılır
    }
    
    @objc func tarihGoster(uiDatePicker:UIDatePicker){
        let format = DateFormatter()
//        format.dateFormat = "MM/dd/yyyy" // 12/03/2024
        format.dateFormat = "EEEE, MMM d, yyyy"  // Tuesday, March 12, 2024
        let alinanTarih = format.string(from: uiDatePicker.date)
        tfTarih.text = alinanTarih
    }
    
    @objc func saatGoster(uiDatePicker:UIDatePicker){
        let format = DateFormatter()
        format.dateFormat = "HH:mm"  // HH -> 24 saatlik dilim hh-> 12 saatlik dilim
        let alinanSaat = format.string(from: uiDatePicker.date)
        tfSaat.text = alinanSaat
    }

}

