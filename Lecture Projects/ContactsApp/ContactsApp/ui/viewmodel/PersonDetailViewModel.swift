//
//  PersonDetailViewModel.swift
//  ContactsApp
//
//  Created by Mehmet Tırpan on 13.03.2024.
//

import Foundation

class PersonDetailViewModel {
    
    var pRepo = ContactsDaoRepository()
    
    func update (person_id:UUID, person_name:String, person_number:String){
        pRepo.update(person_id: person_id, person_name: person_name, person_number: person_number)
    }
}
