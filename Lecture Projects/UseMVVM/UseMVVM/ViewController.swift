//
//  ViewController.swift
//  UseMVVM
//
//  Created by Mehmet Tırpan on 12.03.2024.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var textFieldSayi1: UITextField!
    
    @IBOutlet weak var textFieldSayi2: UITextField!
    
    var viewModel = AnasayfaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // dinleme
        _ = viewModel.sonuc.subscribe(onNext: { s in  // s nin amacı sonuç yani sonucu bize aktarın kısaltımı gibi
            self.labelSonuc.text = String(s)
        })
    }

    @IBAction func toplamaButton(_ sender: Any) {
        if let alinanSayi1 = textFieldSayi1.text, let alinanSayi2 = textFieldSayi2.text {
            viewModel.toplamaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
        }
    }
    
    @IBAction func carpmaButton(_ sender: Any) {
        if let alinanSayi1 = textFieldSayi1.text, let alinanSayi2 = textFieldSayi2.text {
            viewModel.carpmaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
        }
    }
    
}

