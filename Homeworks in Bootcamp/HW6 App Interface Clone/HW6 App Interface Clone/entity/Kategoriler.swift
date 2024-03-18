//
//  Kategoriler.swift
//  HW6 App Interface Clone
//
//  Created by Mehmet Tırpan on 17.03.2024.
//

import Foundation

class Kategoriler{
    
    
    var kategori_id:UUID?
    var kategori_name:String?
    var aciklama_name:String?
    var image:String?
    
    init(){
        
    }
    
    init(kategori_id: UUID, kategori_name: String, aciklama_name: String, image: String) {
        self.kategori_id = kategori_id
        self.kategori_name = kategori_name
        self.aciklama_name = aciklama_name
        self.image = image
    }
    
 
    
    
}
