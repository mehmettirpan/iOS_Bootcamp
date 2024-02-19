//
//  GameScreenVC.swift
//  SecondAppInBootcamp
//
//  Created by Mehmet Tırpan on 20.02.2024.
//

import UIKit

class GameScreenVC: UIViewController {
    
    @IBOutlet weak var gameScreenLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
