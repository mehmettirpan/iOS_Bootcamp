//
//  ViewController.swift
//  FirstAppInBootcamp
//
//  Created by Mehmet Tırpan on 19.02.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Pizza"
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "mainColor")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "textColor1")!, .font: UIFont(name: "Pacifico", size: 22)!]
        
        navigationController?.navigationBar.barStyle = .black // üstteki şarj wi-fi bölmesinin renk tonunu ayarlıyorsun (black de beyaz oluyor)
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }


}

