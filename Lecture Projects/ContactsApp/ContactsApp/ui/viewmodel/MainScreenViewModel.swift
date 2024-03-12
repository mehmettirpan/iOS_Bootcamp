//
//  MainScreenViewModel.swift
//  ContactsApp
//
//  Created by Mehmet Tırpan on 13.03.2024.
//

import Foundation
import RxSwift

class MainScreenViewModel {
    
    var sRepo = ContactsDaoRepository() //save repo = srepo
    var contactsList = BehaviorSubject<[Contacts]>(value: [Contacts]())
    
    init(){  // MainScreenViewModel nesnesi oluşturulduysa init metodu çalışır
        contactsList = sRepo.contactsList // rxswift yapısı ile repoyu bağladık
        contactsUpload() // eğer bunu yapmazsak ilk çalıştığı anda ekranda liste olmaz
    }
    
    func delete(person_id:UUID){
        sRepo.delete(person_id: person_id)
    }
    
    func search(searchText:String){
        sRepo.search(searchText: searchText)
    }
    
    func contactsUpload(){
        sRepo.contactsUpload()
    }
}
