//
//  LogInVC.swift
//  HW3
//
//  Created by Mehmet Tırpan on 20.02.2024.
//

import UIKit

class LogInVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logInButton(_ sender: Any) {
        
        if (emailTextField.text == "admin" && passwordTextField.text == "123456"){
            performSegue(withIdentifier: "toTabController", sender: nil)
        }
    }
    

}
