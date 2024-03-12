//
//  PersonSaveViewModel.swift
//  ContactsApp
//
//  Created by Mehmet Tırpan on 13.03.2024.
//

import Foundation

class PersonSaveViewModel {
    var sRepo = ContactsDaoRepository()
    
    func save (person_name:String, person_number:String){
        sRepo.save(person_name: person_name, person_number: person_number)
    }
}
