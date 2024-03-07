//
//  ViewController.swift
//  WidgetUse
//
//  Created by Mehmet Tırpan on 4.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var sensitivityLabel: UILabel!
    
    @IBOutlet weak var sensitivitySlider: UISlider!
    
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sensitivityLabel.text = "The Sensivity is % \(String(Int(sensitivitySlider.value)))"
        stepperLabel.text = String(Int(stepper.value))
        
        indicator.isHidden = true
    }

    @IBAction func doItButton(_ sender: Any) {
        if textField.text == "deneme"{
            label.text = "Deneme Başarılı"
            print("Success")
        }
        else{
            label.text = textField.text
            print("else çalıştı")
        }
    }
    
    
    
    @IBAction func rightButton(_ sender: Any) {
        if imageView.image?.accessibilityIdentifier == "rocket" {
            imageView.image = UIImage(named: "rocketUp")
        } else if imageView.image?.accessibilityIdentifier == "rocketUp" {
            imageView.image = UIImage(named: "symbols")
        } else if imageView.image?.accessibilityIdentifier == "symbols" {
            imageView.image = UIImage(named: "rocket")
        }
    }

    @IBAction func leftButton(_ sender: Any) {
        if imageView.image?.accessibilityIdentifier == "rocketUp" {
            imageView.image = UIImage(named: "rocket")
        } else if imageView.image?.accessibilityIdentifier == "rocket" {
            imageView.image = UIImage(named: "symbols")
        } else if imageView.image?.accessibilityIdentifier == "symbols" {
            imageView.image = UIImage(named: "rocketUp")
        }
    }

    @IBAction func switchChange(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch: ON")
        }else{
            print("Switch: OFF")
        }
    }
    
    @IBAction func showButton(_ sender: Any) {
        print("Switch Status: \(mSwitch.isOn)")
        let chosenIndex = segmentedControl.selectedSegmentIndex
        let chosenCategories = segmentedControl.titleForSegment(at: chosenIndex)
        print("Choose Status: \(chosenCategories!)")
        print("Slider is: \(sensitivitySlider.value)")
        print("Stepper is: \(stepper.value)")
    }
    
    @IBAction func segmentedChange(_ sender: UISegmentedControl) {
        let chosenIndex = sender.selectedSegmentIndex
        let chosenCategories = sender.titleForSegment(at: chosenIndex)
        print("Choose : \(chosenCategories!)")
    }
    
    
    @IBAction func sliderChange(_ sender: UISlider) {
        sensitivityLabel.text = "The Sensivity is % \(String(Int(sender.value)))"
    }
    
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        stepperLabel.text = String(Int(sender.value))
        if sender.value == 10 {
               // UIAlertController oluşturma
               let alertController = UIAlertController(title: "Uyarı", message: "Stepper değeri 10'a ulaştı!", preferredStyle: .alert)
               
               // Alert'a bir eylem ekleme
               let action = UIAlertAction(title: "Tamam", style: .default) { (action:UIAlertAction!) in
                   // Kullanıcı "Tamam" düğmesine tıkladığında gerçekleşecek işlemler
                   print("Tamam düğmesine basıldı!")
               }
               
               // Eylemi alertController'a ekleme
               alertController.addAction(action)
               
               // UIAlertController'ı gösterme
               self.present(alertController, animated: true, completion: nil)
           }
    }
    
    
    @IBAction func startButton(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    @IBAction func stopButton(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
    
}

