//
//  ContactDetail.swift
//  ContactsApp
//
//  Created by Mehmet Tırpan on 8.03.2024.
//

import UIKit

class DetailPerson: UIViewController {


    @IBOutlet weak var tfPersonName: UITextField!
    @IBOutlet weak var tfPersonNumber: UITextField!
    
    var person:Contacts?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let p = person{
            tfPersonName.text = p.person_name
            tfPersonNumber.text = p.person_number
        }
    }
    
    @IBAction func updateButton(_ sender: Any) {
        if let ka = tfPersonName.text, let kt = tfPersonNumber.text, let p = person {
            update(person_id: p.person_id!, person_name: ka, person_number: kt)
        }
    }
    
    func update (person_id:UUID, person_name:String, person_number:String){
        print("Save Person: \(person_id) - \(person_name) - \(person_number)")
    }
    
}
