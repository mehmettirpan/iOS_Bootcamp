//
//  GameScreenVC.swift
//  SecondAppInBootcamp
//
//  Created by Mehmet Tırpan on 20.02.2024.
//

import UIKit

class GameScreenVC: UIViewController {
    
    @IBOutlet weak var gameScreenLabel: UILabel!
    
    var contact:Contacts?

    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let c = contact{
            print("----- Game Screen VC -------")
            print("  Contact name:  \(c.name!)")
            print("   Contact age:  \(c.age!)")
            print("Contact height:  \(c.height!)")
            print("Contact single:  \(c.single!)")
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        // önceki sayfaya dönüş
//        navigationController?.popViewController(animated: true)
        
        // ana sayfaya dönüş
//        navigationController?.popToRootViewController(animated: true)
        
        
    }
    

    @IBAction func finishButton(_ sender: Any) {
        performSegue(withIdentifier: "toResultScreen", sender: nil)
    }
    
    
}
