//
//  ContentSave.swift
//  ContactsApp
//
//  Created by Mehmet Tırpan on 8.03.2024.
//

import UIKit

class SavePerson: UIViewController {

    @IBOutlet weak var tfPersonName: UITextField!
    
    @IBOutlet weak var tfPersonNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func saveButton(_ sender: Any) {
        if let ka = tfPersonName.text, let kt = tfPersonNumber.text {
            save(person_name: ka, person_number: kt)
        }
        
    }
    
    func save (person_name:String, person_number:String){
        print("Save Person: \(person_name) - \(person_number)")
    }
    

}
