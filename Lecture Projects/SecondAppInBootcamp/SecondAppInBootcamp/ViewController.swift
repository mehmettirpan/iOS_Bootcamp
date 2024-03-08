//
//  ViewController.swift
//  SecondAppInBootcamp
//
//  Created by Mehmet Tırpan on 20.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainScreenLabel: UILabel!
    // Leading - Left - start
    //Trailing - Right - end
    
    
    override func viewDidLoad() {  // uygulama ilk açıldığında "Bir kere " Çalışır
        super.viewDidLoad()
        
        mainScreenLabel.text = "Welcome"
    }
    
    
    override func viewWillAppear(_ animated: Bool) { // sayfa her göründüğünde çalışır
        <#code#>
    }
    
    override func viewWillDisappear(_ animated: Bool) { // sayfa her görünmez olduğunda çalışır (disappear)
        <#code#>
    }
    
    

    @IBAction func doItButton(_ sender: Any) {
    }
    
    @IBAction func startButton(_ sender: Any) {
        let contact = Contacts(name: "Jared", age: 34, height: 187.5, single: true)
        
        performSegue(withIdentifier: "toGameScreen", sender: contact)
    }
    
    
    
//    sender'ı superclass a dönüştürmeye downCasting deniyor
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare çalıştı")
        
        if segue.identifier == "toGameScreen"{
            print("to game screen çalıştı")
            
            if let data = sender as? Contacts {
                let goToVC = segue.destination as! GameScreenVC
                goToVC.contact = data
            }
        }
        
    }
    
    @IBAction func addButton(_ sender: Any) {
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
    }
    

}

