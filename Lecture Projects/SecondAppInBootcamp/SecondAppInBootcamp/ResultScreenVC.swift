//
//  ResultScreenVC.swift
//  SecondAppInBootcamp
//
//  Created by Mehmet Tırpan on 20.02.2024.
//

import UIKit

class ResultScreenVC: UIViewController {

    @IBOutlet weak var resultScreenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true) // modal sayfayı kapatmak için
    }
    


}
