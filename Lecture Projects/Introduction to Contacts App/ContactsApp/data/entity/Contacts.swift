//
//  Contacts.swift
//  ContactsApp
//
//  Created by Mehmet Tırpan on 8.03.2024.
//

import Foundation

class Contacts {
    var person_id:UUID?
    var person_name:String?
    var person_number:String?
    
    init(){
        
    }
    
    init(person_id: UUID, person_name: String, person_number: String) {
        self.person_id = person_id
        self.person_name = person_name
        self.person_number = person_number
    }
}
