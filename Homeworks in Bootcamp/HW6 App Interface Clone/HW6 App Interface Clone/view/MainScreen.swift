//
//  ViewController.swift
//  HW6 App Interface Clone
//
//  Created by Mehmet Tırpan on 17.03.2024.
//

import UIKit

class MainScreen: UIViewController {

    @IBOutlet weak var aramaTableView: UITableView!
    
    var kategoriListesi = [Kategoriler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

