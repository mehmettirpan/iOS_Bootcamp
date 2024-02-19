//
//  ViewController.swift
//  SecondAppInBootcamp
//
//  Created by Mehmet Tırpan on 20.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainScreenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainScreenLabel.text = "Welcome"
    }

    @IBAction func doItButton(_ sender: Any) {
    }
    
    @IBAction func startButton(_ sender: Any) {
        performSegue(withIdentifier: "toGameScreen", sender: nil)
    }
    

}

