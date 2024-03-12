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
    
    var viewModel = PersonSaveViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func saveButton(_ sender: Any) {
        if let ka = tfPersonName.text, let kt = tfPersonNumber.text {
            viewModel.save(person_name: ka, person_number: kt)
        }
        
    }
    

}
