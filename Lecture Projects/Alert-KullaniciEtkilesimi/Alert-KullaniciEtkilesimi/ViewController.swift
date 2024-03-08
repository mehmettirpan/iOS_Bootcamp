//
//  ViewController.swift
//  Alert-KullaniciEtkilesimi
//
//  Created by Mehmet Tırpan on 4.03.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alertButton(_ sender: Any) {
        let allertController = UIAlertController(title: "Title", message: "You get alert", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ action in
            print("cancel was pressed")
        }
        allertController.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "OK", style: .destructive){ action in
            print("OK was pressed")
        }
        allertController.addAction(okAction)
        
        self.present(allertController, animated: true)
    }
    
    
    @IBAction func actionSheetButton(_ sender: Any) {
        let allertController = UIAlertController(title: "Title", message: "You get alert", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ action in
            print("cancel was pressed")
        }
        allertController.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "OK", style: .destructive){ action in
            print("OK was pressed")
        }
        allertController.addAction(okAction)
        
        self.present(allertController, animated: true)
        
        
    }
    
    
    @IBAction func specialButton(_ sender: Any) {
        
        let allertController = UIAlertController(title: "Title", message: "You get alert", preferredStyle: .alert)
        
        
//        allertController.addTextField() // böyle kalrsa kullanıcıdan yazı alacaktır
        allertController.addTextField{ textField in // indeksi 0 o yüzden tf0
            textField.placeholder = "Enter data" // standart placeholder
            textField.keyboardType = .numberPad // açılan klavye
            textField.isSecureTextEntry = true // şifre girerken girilen ifadeyi nokta şeklinde yapan kod
            
        }
        
        allertController.addTextField()// indeksi 1 o yüzden tf1
        
        let saveAction = UIAlertAction(title: "SAVE", style: .destructive){ action in
            let tf0 = allertController.textFields![0] as UITextField
            let tf1 = allertController.textFields![0] as UITextField
            
            if let retrievedData = tf0.text, let retrievedData1 = tf1.text{ // alınan veriyi gösteriyor
                print("Data: \(retrievedData) - \(retrievedData1)")
            }
            print("OK was pressed")
        }
        allertController.addAction(saveAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ action in
            print("cancel was pressed")
        }
        allertController.addAction(cancelAction)
        
        self.present(allertController, animated: true)
    }
    
}

