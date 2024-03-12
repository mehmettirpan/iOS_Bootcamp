//
//  ContactsDaoRepository.swift
//  ContactsApp
//
//  Created by Mehmet Tırpan on 13.03.2024.
//

import Foundation
import RxSwift

class ContactsDaoRepository{
    
    var contactsList = BehaviorSubject<[Contacts]>(value: [Contacts]())
    
    func save (person_name:String, person_number:String){
        print("Save Person: \(person_name) - \(person_number)")
    }
    
    func update (person_id:UUID, person_name:String, person_number:String){
        print("Save Person: \(person_id) - \(person_name) - \(person_number)")
    }
    
    func delete(person_id:UUID){
        print("Person delete: \(person_id)")
        contactsUpload()
    }
    
    func search(searchText:String){
        print("Search Person: \(searchText)")
    }
    
    func contactsUpload(){
        var list = [Contacts]()
        let p1 = Contacts(person_id: UUID(), person_name: "Şevval", person_number: "0 500 100 11 00")
        let p2 = Contacts(person_id: UUID(), person_name: "Mehmet", person_number: "0 500 101 11 00")
        let p3 = Contacts(person_id: UUID(), person_name: "Deniz", person_number: "0 500 100 12 43")
        list.append(p1)
        list.append(p2)
        list.append(p3)
        contactsList.onNext(list) // Tetikleme MainScreenViewModel deki kişileri tetikliyor
    }
}
